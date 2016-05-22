/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Jobseeker;
import databasemodels.Jobseekerskills;
import entitymanager.JobseekerManagerImpl;
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
@WebServlet(name = "AddJobseekerFieldTagController", urlPatterns = {"/AddJobseekerFieldTagController"})
public class AddJobseekerFieldTagController extends HttpServlet {

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
            JobseekerManagerImpl manager = (JobseekerManagerImpl)ctx.getBean("jobseekerManagerImpl");
            Jobseeker jobseeker = manager.getbyAccountId(accountId);
            
            Jobseekerskills jobseekerskills = new Jobseekerskills();
            jobseekerskills.setTitle(tagText);
            jobseekerskills.setJobseeker(jobseeker);
            
            jobseeker.setJobseekerskillsCollection(new ArrayList());
            jobseeker.getJobseekerskillsCollection().add(jobseekerskills);
            
            manager.createOrUpdate(jobseeker);
        }else{
            response.setStatus(422);
        }
    }

}
