/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

import databasemodels.Account;
import databasemodels.Jobseeker;
import databasemodels.Jobseekerresume;
import databasemodels.Jobseekerskills;
import entitymanager.AccountManagerImpl;
import entitymanager.JobseekerManagerImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import viewmodel.JobSeekerInformationBean;
import viewmodel.JobSeekerProfileInfoBean;
import viewmodel.JobSeekerWorkExperienceBean;

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
        
        ApplicationContext ctx = new ClassPathXmlApplicationContext("Beans.xml");
        
        final int accountId = (int)request.getSession().getAttribute("accountId");
        AccountManagerImpl manager = (AccountManagerImpl)ctx.getBean("accountManagerImpl");
        Account account = manager.get(accountId);
        String kind = account.getKind();
        
        
        JobseekerManagerImpl mng = (JobseekerManagerImpl)ctx.getBean("jobseekerManagerImpl");
        
        
        String senderId = request.getParameter("senderId");
        Jobseeker jobseeker = mng.get(Integer.parseInt(senderId));
        Iterator<Jobseekerresume> jobSeekerResumes = jobseeker.getJobseekerresumeCollection().iterator();
        List<JobSeekerWorkExperienceBean> jobSeekerWorkExperienceBeans = new ArrayList<>();
        
        DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
        while(jobSeekerResumes.hasNext()) {
            JobSeekerWorkExperienceBean jobSeekerWorkExperienceBean = new JobSeekerWorkExperienceBean();
            jobSeekerWorkExperienceBean.setFromDate(df.format(jobSeekerResumes.next().getStartdate()));
            jobSeekerWorkExperienceBean.setTillDate(df.format(jobSeekerResumes.next().getEnddate()));
            jobSeekerWorkExperienceBean.setWorkPlace(jobSeekerResumes.next().getTitle());
            jobSeekerWorkExperienceBean.setResponsibility(jobSeekerResumes.next().getResponsibility());
            jobSeekerWorkExperienceBeans.add(jobSeekerWorkExperienceBean);
        }
        
        
        JobSeekerProfileInfoBean jobSeekerProfileInfoBean = new JobSeekerProfileInfoBean();        
        jobSeekerProfileInfoBean.setDegree(jobseeker.getEducation());
        
        Iterator<Jobseekerskills> jobSeekerSkills =jobseeker.getJobseekerskillsCollection().iterator();
        String[] skills = new String[jobseeker.getJobseekerskillsCollection().size()];
        int i = 0;
        while(jobSeekerSkills.hasNext()) {
            skills[i] = jobSeekerSkills.next().getTitle();
            i++;
        }
        jobSeekerProfileInfoBean.setSkills(skills);
                
        JobSeekerInformationBean jobSeekerInformationBean = new JobSeekerInformationBean();
        jobSeekerInformationBean.setNameAndFamilyName(jobseeker.getName());
        jobSeekerInformationBean.setBirthDate(df.format(jobseeker.getBirthday()));
        jobSeekerInformationBean.setPhoneNum(jobseeker.getPhone());
        jobSeekerInformationBean.setImageUrl(jobseeker.getImageaddress());
        
        
        request.setAttribute("jobSeekerWorkExperienceBeans", jobSeekerWorkExperienceBeans);
        request.setAttribute("jobSeekerProfileInfoBean", jobSeekerProfileInfoBean);
        request.setAttribute("jobSeekerInformationBean", jobSeekerInformationBean);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("jobFinderProfile.jsp");
        dispatcher.forward(request, response);
    }  
}
