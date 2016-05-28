/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Job;
import databasemodels.Notification;
import entitymanager.AccountManagerImpl;
import entitymanager.JobManagerImpl;
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
@WebServlet(name = "SendNotification", urlPatterns = {"/SendNotification"})
public class SendNotification extends HttpServlet {

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
        AccountManagerImpl manager = (AccountManagerImpl) ctx.getBean("accountManagerImpl");
        JobManagerImpl jobManager = (JobManagerImpl) ctx.getBean("jobManagerImpl");
        
        final int senderId = (int) request.getSession().getAttribute("accountId");
        final int destinationId = Integer.parseInt(request.getParameter("destinationId"));
        final int jobId = Integer.parseInt(request.getParameter("jobId"));
        final Notification notification = new Notification();
        
        notification.setSender(manager.get(senderId));
        notification.setReceiver(manager.get(destinationId));
        final Job job = jobManager.get(jobId);
        notification.setJob(job);
        
        job.setNotificationCollection(new ArrayList());
        job.getNotificationCollection().add(notification);
        
        jobManager.createOrUpdate(job);
    }

}
