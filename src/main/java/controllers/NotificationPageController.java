/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Notification;
import entitymanager.NotificationManagerImpl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import viewmodel.EmployerNotificationBean;
import viewmodel.JobSeekerNotificationBean;
import viewmodel.NotificationBean;
import viewmodel.TeamNotificationBean;

/**
 *
 * @author SAEED
 */
@WebServlet(name = "NotificationPageController", urlPatterns = {"/NotificationPageController"})
public class NotificationPageController extends HttpServlet {

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
        
        final int accountId = (int) request.getSession().getAttribute("accountId");
        
        NotificationManagerImpl notificationManager = 
                (NotificationManagerImpl) ctx.getBean("notificationManagerImpl");
        
        List<EmployerNotificationBean> employerNotificationBeans = new ArrayList();
        List<JobSeekerNotificationBean> jobSeekerNotificationBeans = new ArrayList();
        List<TeamNotificationBean> teamNotificationBeans = new ArrayList();
        
        for(Notification notification : notificationManager.getByReceiverId(accountId)){
            switch(notification.getSender().getKind()){
                case "employer":
                    EmployerNotificationBean ebean = new EmployerNotificationBean();
                    ebean.setEmployerName(notification.getSender().getEmployerCollection().iterator().next().getName());
                    ebean.setJobTitle(notification.getJob().getTitle());
                    ebean.setSenderId(notification.getSender().getId().toString());
                    employerNotificationBeans.add(ebean);
                    break;
                case "jobseeker":
                    JobSeekerNotificationBean jbean = new JobSeekerNotificationBean();
                    jbean.setJobSeekerName(notification.getSender().getJobseekerCollection().iterator().next().getName());
                    jbean.setJobTitle(notification.getJob().getTitle());
                    jbean.setSenderId(notification.getSender().getId().toString());
                    jobSeekerNotificationBeans.add(jbean);
                    break;
                case "team":
                    TeamNotificationBean tbean = new TeamNotificationBean();
                    tbean.setTeamName(notification.getSender().getTeamCollection().iterator().next().getName());
                    tbean.setJobTitle(notification.getJob().getTitle());
                    tbean.setSenderId(notification.getSender().getId().toString());
                    teamNotificationBeans.add(tbean);
                    break;
                default:
                    
            }
            NotificationBean notificationBean = new NotificationBean();
            notificationBean.setEmployerNotificationBeans(employerNotificationBeans);
            notificationBean.setJobSeekerNotificationBeans(jobSeekerNotificationBeans);
            notificationBean.setTeamNotificationBeans(teamNotificationBeans);
            request.setAttribute("notification", notificationBean);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("notification.jsp");
        dispatcher.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
        processRequest(request, response);
    }

}
