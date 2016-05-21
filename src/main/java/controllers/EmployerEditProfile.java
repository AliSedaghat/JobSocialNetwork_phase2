/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Account;
import databasemodels.Employer;
import entitymanager.EmployerManagerImpl;
import filemanagement.FileManager;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author SAEED
 */
@MultipartConfig 
@WebServlet(name = "EmployerEditProfile", urlPatterns = {"/EmployerEditProfilePrimaryInfoController"})
public class EmployerEditProfile extends HttpServlet {

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
        final int accountId = (int) request.getSession().getAttribute("accountId");
        final Part imageFile = request.getPart("imageFile");
        final InputStream stream = imageFile.getInputStream();
        final String imageAddress = FileManager.saveFile(imageFile.getSubmittedFileName(), stream);
        if(imageAddress.equals("")){
           // save image file operation is failed 
        }
        final String name = request.getParameter("name");
        final String phone = request.getParameter("phone");
        final String email = request.getParameter("email");
        final String region = request.getParameter("region");
        final String city = request.getParameter("city");
        final String remainAddress = request.getParameter("remainParameter");
        final String summury = request.getParameter("summury");
        EmployerManagerImpl manager = new EmployerManagerImpl();
        
        Employer employer = manager.getbyAccountId(accountId);
        employer.setName(name);
        employer.setPhone(phone);
        employer.setEmail(email);
        employer.setRegion(region);
        employer.setCity(city);
        employer.setRemainaddress(remainAddress);
        employer.setImageaddress(imageAddress);
        employer.setSummury(summury);
        manager.createOrUpdate(employer);
    }

}
