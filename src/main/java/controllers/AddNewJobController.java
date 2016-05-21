/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Employer;
import databasemodels.Job;
import databasemodels.Jobskills;
import entitymanager.EmployerManagerImpl;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SAEED
 */
@WebServlet(name = "AddNewJobController", urlPatterns = {"/AddNewJobController"})
public class AddNewJobController extends HttpServlet {
    
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
        request.setCharacterEncoding("utf-8");
        final int accountId = (int) request.getSession(true).getAttribute("accountId");
        final String jobTitle = request.getParameter("jobTitle");
        final String sex = request.getParameter("sex");
        final String capacity = request.getParameter("capacity");
        final String contributeKind = request.getParameter("contributeKind");
        final String salary = request.getParameter("salary");
        final String skills = request.getParameter("skills");
        final String otherRequirment = request.getParameter("otherRequirment");
        
        final EmployerManagerImpl manager = new EmployerManagerImpl();
        final Employer employer = manager.getbyAccountId(accountId);
        
        Job job = new Job();
        job.setEmployer1(employer);
        job.setTitle(jobTitle);
        job.setSex(sex);
        job.setCapacity(Integer.parseInt(capacity));
        job.setContributekind(contributeKind);
        job.setSalary(Integer.parseInt(salary));
        List<String> skillList = Arrays.asList(skills.split(","));
        for (String skill : skillList) {
            Jobskills jobskills = new Jobskills();
            jobskills.setJob(job);
            jobskills.setTitle(skill);
            job.getJobskillsCollection().add(jobskills);
        }
        job.setOtherrequirment(otherRequirment);

        employer.getJobCollection().add(job);
        
        manager.createOrUpdate(employer);
    }
}
