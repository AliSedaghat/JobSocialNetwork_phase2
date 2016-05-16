/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import dao.TeamDAOImpl;

/**
 *
 * @author SAEED
 */
public class TeamManagerImpl implements TeamManager{

    private TeamDAOImpl teamDAO;
    
    @Override
    public Integer getCountAll() {
        return teamDAO.getCountAll();
    }
    
}
