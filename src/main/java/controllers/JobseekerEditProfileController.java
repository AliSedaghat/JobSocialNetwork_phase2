/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Jobseeker;
import entitymanager.JobseekerManagerImpl;
import filemanagement.FileManager;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author SAEED
 */
@WebServlet(name = "JobseekerEditProfileController", urlPatterns = {"/JobseekerEditProfilePrimaryInfoController"})
public class JobseekerEditProfileController extends HttpServlet {

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
        final int accountId = (int) request.getSession().getAttribute("accountId");
        final Part imageFile = request.getPart("imageFile");
        final InputStream stream = imageFile.getInputStream();
        final String imageAddress = FileManager.saveFile(imageFile.getSubmittedFileName(), stream);
        if(imageAddress.equals("")){
           // save image file operation is failed 
        }
        
        try {
            final String name = request.getParameter("name");
            final String sex = request.getParameter("sex");
            final String showPrivacy = request.getParameter("showPrivacy");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            final Date birthday = sdf.parse(request.getParameter("birthday"));
            final String phone = request.getParameter("phone");
            final String email = request.getParameter("email");
            final String region = request.getParameter("region");
            final String city = request.getParameter("city");
            final String remainAddress = request.getParameter("remainParameter");
            final String summury = request.getParameter("summury");
            
            
            JobseekerManagerImpl manager = (JobseekerManagerImpl)ctx.getBean("jobseekerManagerImpl");

            Jobseeker jobseeker = manager.getbyAccountId(accountId);
            jobseeker.setName(name);
            jobseeker.setSex(sex);
            jobseeker.setShowprivacy(showPrivacy);
            jobseeker.setBirthday(birthday);
            jobseeker.setPhone(phone);
            jobseeker.setEmail(email);
            jobseeker.setRegion(region);
            jobseeker.setCity(city);
            jobseeker.setRemainaddress(remainAddress);
            jobseeker.setImageaddress(imageAddress);
            jobseeker.setSummury(summury);
            manager.createOrUpdate(jobseeker);
            
        } catch (ParseException ex) {
            Logger.getLogger(JobseekerEditProfileController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
