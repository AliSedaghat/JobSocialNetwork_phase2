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
import viewmodel.JobSeekerInformationBean;
import viewmodel.JobSeekerResumeBean;

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
        
        final int requestedAccountId = Integer.parseInt(request.getParameter("requestedAccountId"));
        
        JobseekerManagerImpl mng = (JobseekerManagerImpl)ctx.getBean("jobseekerManagerImpl");
        Jobseeker jobseeker = mng.getbyAccountId(requestedAccountId);
        
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        
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
        
        if(request.getSession().getAttribute("accountId") != null){
            final int accountId = (int) request.getSession().getAttribute("accountId");
            if(accountId == requestedAccountId){
                request.setAttribute("pageOnwer", true);
            }else{
                request.setAttribute("pageOnwer", false);
            }
        }else{
            request.setAttribute("pageOnwer", false);
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("jobFinderProfile.jsp");
        dispatcher.forward(request, response);
    }  

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
}
