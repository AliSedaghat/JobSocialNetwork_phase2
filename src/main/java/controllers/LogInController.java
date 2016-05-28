/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Account;
import entitymanager.AccountManagerImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "LogInController", urlPatterns = {"/LogInController"})
public class LogInController extends HttpServlet {
    
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
        
        final String username = request.getParameter("username");
        final String password = request.getParameter("password");

        ApplicationContext ctx = new ClassPathXmlApplicationContext("Beans.xml");
        AccountManagerImpl manager = (AccountManagerImpl)ctx.getBean("accountManagerImpl");
        Account account = manager.get(username, password);

        if(account != null){
            request.getSession(true).setAttribute("accountId", account.getId());
            RequestDispatcher dispatcher;
            switch(account.getKind()){
                case "employer":
                    dispatcher = request.getRequestDispatcher("EmployerEditProfile.jsp");
                    break;
                case "jobseeker":
                    dispatcher = request.getRequestDispatcher("jobFinderEditProfile.jsp");
                    break;
                case "team":
                    dispatcher = request.getRequestDispatcher("teamEditProfile.jsp");
                    break;
                default:
                    dispatcher = request.getRequestDispatcher("404.jsp");
            }
            dispatcher.forward(request, response); // redirect to edit profile page
        }
        else{
            response.sendError(404, "نام کاربری یا رمز عبور اشتباه است");
        }
        
    }

}
