/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import dao.TeamDAOImpl;
import databasemodels.Team;

/**
 *
 * @author SAEED
 */
@Service
public class TeamManagerImpl implements TeamManager{
    @Autowired
    private TeamDAOImpl teamDAO;
    
    @Override
    @Transactional
    public Integer getCountAll() {
        return teamDAO.getCountAll();
    }
    
    @Override
    @Transactional
    public Team getbyAccountId(Integer accountId) {
        return teamDAO.getByAccountId(accountId);
    }

    @Override
    @Transactional
    public void createOrUpdate(Team team) {
        teamDAO.createOrUpdate(team);
    }
    
    @Override
    @Transactional
    public Team get(Integer id) {
        return teamDAO.read(id);
    }
    
    
}
