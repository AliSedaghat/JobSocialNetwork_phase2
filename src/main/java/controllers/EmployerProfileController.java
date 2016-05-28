/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

import databasemodels.Employer;
import databasemodels.Job;
import databasemodels.Jobskills;
import entitymanager.EmployerManagerImpl;
import java.io.IOException;
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
import viewmodel.EmployerSearchResultBean;

/**
 *
 * @author ali
 */
@WebServlet(name = "EmployerProfileController", urlPatterns = {"/EmployerProfileController"})
public class EmployerProfileController extends HttpServlet {

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
        
        EmployerManagerImpl manager = (EmployerManagerImpl)ctx.getBean("employerManagerImpl");   
        Employer employer = manager.get(requestedAccountId);
        
        final EmployerInformationBean employerInformationBean = new EmployerInformationBean();
        employerInformationBean.setEmployerName(employer.getName());
        employerInformationBean.setEmail(employer.getEmail());
        employerInformationBean.setPhoneNum(employer.getPhone());
        employerInformationBean.setState(employer.getRegion());
        employerInformationBean.setCity(employer.getCity());
        employerInformationBean.setRemainAddr(employer.getRemainaddress());
        employerInformationBean.setImageUrl(employer.getImageaddress());
        
        List<EmployerSearchResultBean> employerSearchResultBeans = new ArrayList<>();
        Iterator<Job> jobs = employer.getJobCollection().iterator();
        while(jobs.hasNext()) {
            final Job job = jobs.next();
            final EmployerSearchResultBean employerSearchResultBean = new EmployerSearchResultBean();
            employerSearchResultBean.setJobTitle(job.getTitle());
            employerSearchResultBean.setSex(job.getSex());
            employerSearchResultBean.setNumOfPersons(String.valueOf(job.getCapacity()));
            employerSearchResultBean.setDesc(job.getOtherrequirment());
            employerSearchResultBean.setKindOfWork(job.getContributekind());
            employerSearchResultBean.setMinWage(String.valueOf(job.getSalary()));
            
            
            Iterator<Jobskills> jobSkills = job.getJobskillsCollection().iterator();
            ArrayList<String> skills = new ArrayList<>();
            while(jobSkills.hasNext()) {
                skills.add(jobSkills.next().getTitle());
            }
            employerSearchResultBean.setSkills(skills);
            employerSearchResultBeans.add(employerSearchResultBean);
        }
        
        employerInformationBean.setEmployerSearchResultBeans(employerSearchResultBeans);
        
        request.setAttribute("employerInformationBean", employerInformationBean);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("EmployerProfile.jsp");
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
