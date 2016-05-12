/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Team;
import java.util.List;

/**
 *
 * @author SAEED
 */
public class TeamDAOImpl extends GenericDAOImpl<Team, Integer>{

    public TeamDAOImpl(Class<Team> type) {
        super(type);
    }

    @Override
    public List<Team> getall() {
        return factory.getCurrentSession()
                .getNamedQuery("Team.findAll").list();
    }
    
}
