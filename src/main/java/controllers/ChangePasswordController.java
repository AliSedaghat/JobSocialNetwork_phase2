/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Account;
import entitymanager.AccountManagerImpl;
import java.io.IOException;
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
@WebServlet(name = "ChangePasswordController", urlPatterns = {"/ChangePasswordController"})
public class ChangePasswordController extends HttpServlet {

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
        
        final String curPassword = request.getParameter("curPassword");
        final String newPassword = request.getParameter("newPassword");
        final String repeatPassword = request.getParameter("repeatPassword");
        
        String errorMessages = "";
        if(curPassword.equals("")){
            errorMessages += "رمز فعلی را وارد نکردید" + "\n";
        }
        if(newPassword.equals("")){
            errorMessages += "رمز جدید را وارد نکردید" + "\n";
        }
        if(repeatPassword.equals("")){
            errorMessages += "تکرار رمز جدید را وارد نکردید" + "\n";
        }
        if(!newPassword.equals(repeatPassword)){
            errorMessages += "رمز جدید و تکرار آن مطابقت ندارد" + "\n";
        }
        
        if(errorMessages.equals("")){// everythings is right
            final int accountId = (int) request.getSession().getAttribute("accountId");
            AccountManagerImpl manager = (AccountManagerImpl)ctx.getBean("accountManagerImpl");
            Account account = manager.get(accountId);
            if(account.getPassword().equals(curPassword)){
                account.setPassword(newPassword);
                manager.update(account);
            }else{
                errorMessages = "رمز فعلی صحیح نیست";
                response.sendError(422, errorMessages);
            }
        }else{
            response.sendError(422, errorMessages);
        }        
    }
}
