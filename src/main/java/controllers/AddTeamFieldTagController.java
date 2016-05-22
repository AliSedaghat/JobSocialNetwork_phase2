/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Team;
import databasemodels.Teamskills;
import entitymanager.TeamManagerImpl;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author SAEED
 */
@WebServlet(name = "AddTeamFieldTagController", urlPatterns = {"/AddTeamFieldTagController"})
public class AddTeamFieldTagController extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ApplicationContext ctx = new ClassPathXmlApplicationContext("Beans.xml");
        
        request.setCharacterEncoding("utf-8");
        final String tagText = request.getParameter("tagText");
        if(tagText.equals("")){
            final int accountId = (int) request.getSession().getAttribute("accountId");
            TeamManagerImpl manager = (TeamManagerImpl)ctx.getBean("teamManagerImpl");
            Team team = manager.getbyAccountId(accountId);
            
            Teamskills teamskills = new Teamskills();
            teamskills.setTitle(tagText);
            teamskills.setTeam(team);
            
            team.setTeamskillsCollection(new ArrayList<Teamskills>());
            team.getTeamskillsCollection().add(teamskills);
            
            manager.createOrUpdate(team);
        }else{
            response.setStatus(422);
        }
    }

}
