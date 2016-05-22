/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

import databasemodels.Team;
import databasemodels.Teamresume;
import entitymanager.TeamManagerImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import viewmodel.OutSourceTeamInformationBean;
import viewmodel.OutSourceTeamResumeBean;

/**
 *
 * @author ali
 */
@WebServlet(name = "TeamProfileController", urlPatterns = {"/TeamProfileController"})
public class TeamProfileController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ApplicationContext ctx = new ClassPathXmlApplicationContext("Beans.xml");
        
        TeamManagerImpl mng = (TeamManagerImpl)ctx.getBean("teamManagerImpl");
        
        String senderId = request.getParameter("senderId");
        Team team = mng.get(Integer.parseInt(senderId));
        
        OutSourceTeamInformationBean outSourceTeamInformationBean = new OutSourceTeamInformationBean ();
        outSourceTeamInformationBean.setTeamName(team.getName());
        outSourceTeamInformationBean.setImageUrl(team.getImageaddress());
        outSourceTeamInformationBean.setPhoneNum(team.getPhone());
        outSourceTeamInformationBean.setEmail(team.getEmail());
        
        DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
        List<OutSourceTeamResumeBean> outSourceTeamResumeBeans = new ArrayList<>();
        Iterator<Teamresume> teamResumes = team.getTeamresumeCollection().iterator();
        while(teamResumes.hasNext()) {
            OutSourceTeamResumeBean outSourceTeamResumeBean = new OutSourceTeamResumeBean();
            outSourceTeamResumeBean.setFromDate(df.format(teamResumes.next().getStartdate()));
            outSourceTeamResumeBean.setTillDate(df.format(teamResumes.next().getEndadate()));
            outSourceTeamResumeBean.setEmployer(teamResumes.next().getEmployername());
            outSourceTeamResumeBean.setProjectTitle(teamResumes.next().getTitle());
            outSourceTeamResumeBeans.add(outSourceTeamResumeBean);
        }
        
        request.setAttribute("outSourceTeamInformationBean", outSourceTeamInformationBean);
        request.setAttribute("outSourceTeamResumeBeans", outSourceTeamResumeBeans);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("teamProfile.jsp");
        dispatcher.forward(request, response);
        
    }
}
