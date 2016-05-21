/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import databasemodels.Team;
import databasemodels.Teamresume;
import entitymanager.TeamManagerImpl;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SAEED
 */
@WebServlet(name = "AddTeamResumeController", urlPatterns = {"/AddTeamResumeController"})
public class AddTeamResumeController extends HttpServlet {

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
        final int accountId = (int) request.getSession(true).getAttribute("accountId");
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            final Date fromDate = sdf.parse(request.getParameter("fromDate"));
            final Date toDate = sdf.parse(request.getParameter("toDate"));
            final String title = request.getParameter("title");
            final String employerName = request.getParameter("employerName");
            
            final TeamManagerImpl manager = new TeamManagerImpl();
            final Team team = manager.getbyAccountId(accountId);
            final Teamresume resume = new Teamresume();
            
            resume.setStartdate(fromDate);
            resume.setEndadate(toDate);
            resume.setTitle(title);
            resume.setEmployername(employerName);
            
            resume.setTeam(team);
            
            team.setTeamresumeCollection(new ArrayList<Teamresume>());
            team.getTeamresumeCollection().add(resume);
            
            manager.createOrUpdate(team);
        } catch (ParseException ex) {
            
        }
    }
}
