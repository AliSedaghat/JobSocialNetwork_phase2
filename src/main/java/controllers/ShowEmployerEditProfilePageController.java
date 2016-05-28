/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Employer;
import databasemodels.Employerjobfield;
import databasemodels.Employerresume;
import databasemodels.Job;
import databasemodels.Jobskills;
import entitymanager.EmployerManagerImpl;
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
import viewmodel.EmployerInformationBean;
import viewmodel.EmployerResumeBean;
import viewmodel.EmployerSearchResultBean;

/**
 *
 * @author SAEED
 */
@WebServlet(name = "ShowEmployerEditProfilePageController", urlPatterns = {"/ShowEmployerEditProfilePageController"})
public class ShowEmployerEditProfilePageController extends HttpServlet {

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
        final EmployerManagerImpl manager = (EmployerManagerImpl) ctx.getBean("employerManagerImpl");
        final Employer employer = manager.getbyAccountId(accountId);
        
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        
        final EmployerInformationBean employerInformationBean = new EmployerInformationBean();
        employerInformationBean.setEmployerName(employer.getName());
        employerInformationBean.setPhoneNum(employer.getPhone());
        employerInformationBean.setEmail(employer.getEmail());
        employerInformationBean.setCity(employer.getCity());
        employerInformationBean.setState(employer.getRegion());
        employerInformationBean.setRemainAddr(employer.getRemainaddress());
        employerInformationBean.setImageUrl(employer.getImageaddress());
        employerInformationBean.setSummury(employer.getSummury());
                
        Iterator<Employerjobfield> employerJobFields = employer.getEmployerjobfieldCollection().iterator();
        List<String> skills = new ArrayList<>();
        while(employerJobFields.hasNext()) {
            skills.add(employerJobFields.next().getTitle());
        }
        employerInformationBean.setSkills(skills);
        
        final List<EmployerResumeBean> employerResumeBeans = new ArrayList<>();
        Iterator<Employerresume> employerResumes = employer.getEmployerresumeCollection().iterator();
        while(employerResumes.hasNext()) {
            Employerresume employerresume = employerResumes.next();
            EmployerResumeBean employerResumeBean = new EmployerResumeBean();
            employerResumeBean.setFromDate(df.format(employerresume.getStartdate()));
            employerResumeBean.setTillDate(df.format(employerresume.getEnddate()));
            employerResumeBean.setTitle(employerresume.getTitle());
            employerResumeBean.setDescription(employerresume.getDescription());
            employerResumeBeans.add(employerResumeBean);
        }
        employerInformationBean.setEmployerResumeBeans(employerResumeBeans);
        
        final List<EmployerSearchResultBean> employerSearchResultBeans = new ArrayList<>();
        Iterator<Job> jobs = employer.getJobCollection().iterator();
        while(jobs.hasNext()) {
            Job job = jobs.next();
            EmployerSearchResultBean employerSearchResultBean = new EmployerSearchResultBean();
            employerSearchResultBean.setJobTitle(job.getTitle());
            employerSearchResultBean.setSex(job.getSex());
            employerSearchResultBean.setNumOfPersons(job.getCapacity().toString());
            employerSearchResultBean.setDesc(job.getOtherrequirment());
            employerSearchResultBean.setKindOfWork(job.getContributekind());
            employerSearchResultBean.setMinWage(job.getSalary().toString());
            List<String> jobSkills = new ArrayList();
            for(Iterator<Jobskills> i = job.getJobskillsCollection().iterator(); i.hasNext(); ){
                jobSkills.add(i.next().getTitle());
            }
            employerSearchResultBean.setSkills(jobSkills);
            
            employerSearchResultBeans.add(employerSearchResultBean);
        }
        employerInformationBean.setEmployerSearchResultBeans(employerSearchResultBeans);
        
        request.setAttribute("employerInformationBean", employerInformationBean);        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("EmployerEditProfile.jsp");
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
