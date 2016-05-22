/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Employer;
import databasemodels.Employerjobfield;
import databasemodels.Employerresume;
import entitymanager.EmployerManagerImpl;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
@WebServlet(name = "AddEmployerResumeController", urlPatterns = {"/AddEmployerResumeController"})
public class AddEmployerResumeController extends HttpServlet {

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
        EmployerManagerImpl manager = (EmployerManagerImpl)ctx.getBean("employerManagerImpl");
        
        request.setCharacterEncoding("utf-8");
        final int accountId = (int) request.getSession(true).getAttribute("accountId");
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            final Date fromDate = sdf.parse(request.getParameter("fromDate"));
            final Date toDate = sdf.parse(request.getParameter("toDate"));
            final String title = request.getParameter("title");
            final String description = request.getParameter("description");
            
            final Employer employer = manager.getbyAccountId(accountId);
            final Employerresume resume = new Employerresume();
            
            resume.setEmployer(employer);
            resume.setStartdate(fromDate);
            resume.setEnddate(toDate);
            resume.setTitle(title);
            resume.setDescription(description);
            
            employer.getEmployerresumeCollection().add(resume);
            
            manager.createOrUpdate(employer);
        } catch (ParseException ex) {
            
        }
        
    }

}
