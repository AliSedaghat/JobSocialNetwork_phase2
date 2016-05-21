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
        
        EmployerManagerImpl mng = new EmployerManagerImpl();
        
        String senderId = request.getParameter("senderId");
        Employer employer = mng.get(Integer.parseInt(senderId));
        
        EmployerInformationBean employerInformationBean = new EmployerInformationBean();
        employerInformationBean.setEmployerName(employer.getName());
        employerInformationBean.setEmail(employer.getEmail());
        employerInformationBean.setPhoneNum(employer.getPhone());
        
        List<EmployerSearchResultBean> employerSearchResultBeans = new ArrayList<>();
        Iterator<Job> jobs = employer.getJobCollection().iterator();
        while(jobs.hasNext()) {
            EmployerSearchResultBean employerSearchResultBean = new EmployerSearchResultBean();
            employerSearchResultBean.setJobTitle(jobs.next().getTitle());
            employerSearchResultBean.setNumOfPersons(String.valueOf(jobs.next().getCapacity()));
            employerSearchResultBean.setSex(jobs.next().getSex());
            employerSearchResultBean.setMinWage(String.valueOf(jobs.next().getSalary()));
            employerSearchResultBean.setKindOfWork(jobs.next().getContributekind());
            
            Iterator<Jobskills> jobSkills = jobs.next().getJobskillsCollection().iterator();
            String[] skills = new String[jobs.next().getJobskillsCollection().size()];
            int i = 0;
            while(jobSkills.hasNext()) {
                skills[i] = jobSkills.next().getTitle();
                i++;
            }
            employerSearchResultBean.setSkills(skills);
            employerSearchResultBean.setDesc(jobs.next().getOtherrequirment());
            
            employerSearchResultBeans.add(employerSearchResultBean);
        }
        
        request.setAttribute("employerInformationBean", employerInformationBean);
        request.setAttribute("employerSearchResultBeans", employerSearchResultBeans);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("EmployerProfile.jsp");
        dispatcher.forward(request, response);
    }
}
