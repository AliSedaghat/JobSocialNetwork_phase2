/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Account;
import entitymanager.AccountManagerImpl;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author SAEED
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {
   
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
        
        final String username = request.getParameter("username");
        final String password = request.getParameter("password");
        final String repeatPassword = request.getParameter("repeatPassword");
        final String kind = request.getParameter("kind");
        
        // validations
        
        String errorMessages = "";
        if(username.equals("")){
            errorMessages += "نام کاربری را صحیح وارد نکردید" + "\n";
        }
        if(password.equals("")){
            errorMessages += "رمز را وارد نکردید" + "\n";
        }
        if(repeatPassword.equals("")){
            errorMessages += "تکرار رمز را وارد نکردید" + "\n";
        }
        if(!password.equals(repeatPassword)){
            errorMessages += "رمز و تکرار آن مطابقت ندارد" + "\n";
        }
        
        if(!kind.equals("employer") && !kind.equals("jobseeker") && !kind.equals("team")){
            errorMessages += "نوع کاربری صحیح نیست";
        }
        
        if(errorMessages.equals("")){// everythings is right
            Account newAccount = new Account();
            newAccount.setUsername(username);
            newAccount.setPassword(password);
            newAccount.setKind(kind);
            AccountManagerImpl manager = (AccountManagerImpl)ctx.getBean("accountManagerImpl");
            int id = manager.create(newAccount);
            HttpSession session = request.getSession();
            session.setAttribute("accountId", id); // save id of user in session
            RequestDispatcher dispatcher;
            switch(kind){
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
        }else{
            response.sendError(422, errorMessages);
        }
        
    }    
}
