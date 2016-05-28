/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entitymanager.EmployerManagerImpl;
import entitymanager.JobManagerImpl;
import entitymanager.JobseekerManagerImpl;
import entitymanager.TeamManagerImpl;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import viewmodel.SiteCurrentInformation;

/**
 *
 * @author SAEED
 */
@WebServlet(name = "HomeController", urlPatterns = {"/"})
public class HomeController extends HttpServlet {

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
        SiteCurrentInformation information = new SiteCurrentInformation();
        
        ApplicationContext ctx = new ClassPathXmlApplicationContext("Beans.xml");
        EmployerManagerImpl employerManagerImpl = (EmployerManagerImpl)ctx.getBean("employerManagerImpl");
        TeamManagerImpl teamManagerImpl = (TeamManagerImpl)ctx.getBean("teamManagerImpl");
        JobManagerImpl jobManagerImpl = (JobManagerImpl)ctx.getBean("jobManagerImpl");
        JobseekerManagerImpl jobseekerManagerImpl = (JobseekerManagerImpl)ctx.getBean("jobseekerManagerImpl");
        
        information.setNumOfEmployers(employerManagerImpl.getCountAll());
        information.setNumOfJobSeekers(jobseekerManagerImpl.getCountAll());
        information.setNumOfJobs(jobManagerImpl.getCountAll());
        information.setNumOfTeams(teamManagerImpl.getCountAll());
//        information.setNumOfEmployers(100);
//        information.setNumOfJobSeekers(51);
//        information.setNumOfJobs(39);
//        information.setNumOfTeams(10);
        request.setAttribute("homeViewModel", information);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
