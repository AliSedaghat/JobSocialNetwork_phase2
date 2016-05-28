/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Jobseeker;
import databasemodels.Jobseekerresume;
import databasemodels.Jobseekerskills;
import entitymanager.JobseekerManagerImpl;
import java.io.IOException;
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
import org.springframework.transaction.annotation.Transactional;
import viewmodel.JobSeekerInformationBean;
import viewmodel.JobSeekerResumeBean;

/**
 *
 * @author SAEED
 */
@WebServlet(name = "ShowJobseekerEditProfilePage", urlPatterns = {"/ShowJobseekerEditProfilePageController"})
public class ShowJobseekerEditProfilePageController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Transactional
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("Beans.xml");
        
        final int accountId = (int)request.getSession().getAttribute("accountId");
        final JobseekerManagerImpl manager = (JobseekerManagerImpl)ctx.getBean("jobseekerManagerImpl");
        final Jobseeker jobseeker = manager.getbyAccountId(accountId);
        
        DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
        
        final JobSeekerInformationBean jobSeekerInformationBean = new JobSeekerInformationBean();
        jobSeekerInformationBean.setSex(jobseeker.getSex());
        jobSeekerInformationBean.setDegreeType(jobseeker.getEducation());
        jobSeekerInformationBean.setNameAndFamilyName(jobseeker.getName());
        jobSeekerInformationBean.setBirthDate(df.format(jobseeker.getBirthday()));
        jobSeekerInformationBean.setPhoneNum(jobseeker.getPhone());
        jobSeekerInformationBean.setEmail(jobseeker.getEmail());
        jobSeekerInformationBean.setCity(jobseeker.getCity());
        jobSeekerInformationBean.setState(jobseeker.getRegion());
        jobSeekerInformationBean.setRemainAddr(jobseeker.getRemainaddress());
        jobSeekerInformationBean.setShowPrivacy(jobseeker.getShowprivacy());
        jobSeekerInformationBean.setImageUrl(jobseeker.getImageaddress());
        
        Iterator<Jobseekerskills> jobSeekerSkills =jobseeker.getJobseekerskillsCollection().iterator();
        List<String> skills = new ArrayList<>();
        while(jobSeekerSkills.hasNext()) {
            skills.add(jobSeekerSkills.next().getTitle());
        }
        jobSeekerInformationBean.setSkills(skills);
        
        final List<JobSeekerResumeBean> jobSeekerResumeBeans = new ArrayList<>();
        Iterator<Jobseekerresume> jobSeekerResumes = jobseeker.getJobseekerresumeCollection().iterator();
        while(jobSeekerResumes.hasNext()) {
            Jobseekerresume jobseekerresume = jobSeekerResumes.next();
            JobSeekerResumeBean JobSeekerResumeBean = new JobSeekerResumeBean();
            JobSeekerResumeBean.setFromDate(df.format(jobseekerresume.getStartdate()));
            JobSeekerResumeBean.setTillDate(df.format(jobseekerresume.getEnddate()));
            JobSeekerResumeBean.setWorkPlace(jobseekerresume.getTitle());
            JobSeekerResumeBean.setResponsibility(jobseekerresume.getResponsibility());
            jobSeekerResumeBeans.add(JobSeekerResumeBean);
        }
        jobSeekerInformationBean.setJobSeekerResumeBeans(jobSeekerResumeBeans);
        
        request.setAttribute("jobSeekerInformationBean", jobSeekerInformationBean);        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("jobFinderEditProfile.jsp");
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
