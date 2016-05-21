/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

import databasemodels.Account;
import databasemodels.Jobseeker;
import entitymanager.AccountManagerImpl;
import entitymanager.JobseekerManagerImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ali
 */
@WebServlet(name = "JobSeekerProfileController", urlPatterns = {"/JobSeekerProfileController"})
public class JobSeekerProfileController extends HttpServlet {

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
        
        final int accountId = (int)request.getSession().getAttribute("accountId");
        AccountManagerImpl manager = new AccountManagerImpl();
        Account account = manager.get(accountId);
        String kind = account.getKind();
        JobseekerManagerImpl mng = new JobseekerManagerImpl();
        Jobseeker jobseeker = mng.get(accountId);
        
    }  
}
