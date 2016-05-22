/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Jobseeker;
import databasemodels.Jobseekerresume;
import entitymanager.JobseekerManagerImpl;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
@WebServlet(name = "AddJobseekerResumeController", urlPatterns = {"/AddJobseekerResumeController"})
public class AddJobseekerResumeController extends HttpServlet {

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
        final int accountId = (int) request.getSession(true).getAttribute("accountId");
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            final Date fromDate = sdf.parse(request.getParameter("fromDate"));
            final Date toDate = sdf.parse(request.getParameter("toDate"));
            final String location = request.getParameter("location");
            final String responsibility = request.getParameter("responsibility");
            
            JobseekerManagerImpl manager = (JobseekerManagerImpl)ctx.getBean("jobseekerManagerImpl");

            final Jobseeker jobseeker = manager.getbyAccountId(accountId);
            final Jobseekerresume resume = new Jobseekerresume();
            
            resume.setStartdate(fromDate);
            resume.setEnddate(toDate);
            resume.setTitle(location);
            resume.setResponsibility(responsibility);
            
            resume.setJobseeker(jobseeker);
            
            jobseeker.setJobseekerresumeCollection(new ArrayList());
            jobseeker.getJobseekerresumeCollection().add(resume);
            
            manager.createOrUpdate(jobseeker);
        } catch (ParseException ex) {
            
        }
    }

}
