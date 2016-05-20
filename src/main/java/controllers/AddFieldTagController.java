/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Employerjobfield;
import entitymanager.EmployerJobFieldManagerImpl;
import entitymanager.EmployerManagerImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SAEED
 */
@WebServlet(name = "AddFieldTagController", urlPatterns = {"/AddFieldTagController"})
public class AddFieldTagController extends HttpServlet {

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
        final String tagText = request.getParameter("tagText");
        if(tagText.equals("")){
            final int accountId = (int) request.getSession().getAttribute("accountId");
            EmployerManagerImpl manager = new EmployerManagerImpl();
            
            Employerjobfield employerjobfield = new Employerjobfield();
            employerjobfield.setTitle(tagText);
            employerjobfield.setEmployer1(manager.getbyAccountId(accountId));
            
            EmployerJobFieldManagerImpl managerJob = new EmployerJobFieldManagerImpl();
            managerJob.delete(employerjobfield);
        }else{
            response.setStatus(422);
        }
    }

}
