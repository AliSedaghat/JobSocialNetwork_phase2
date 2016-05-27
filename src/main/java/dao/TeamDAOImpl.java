/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Team;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author SAEED
 */
@Repository
public class TeamDAOImpl extends GenericDAOImpl<Team, Integer>{

    public TeamDAOImpl() {
        super(Team.class);
    }
    
    public TeamDAOImpl(Class<Team> type) {
        super(type);
    }

    @Override
    public List<Team> getAll() {
        return factory.getCurrentSession()
                .getNamedQuery("Team.findAll").list();
    }
    
    @Override
    public Integer getCountAll() {
        return (Integer) factory.getCurrentSession()
                .getNamedQuery("Team.count").list().get(0);
    }
    
    public Team getByAccountId(Integer accountId){
        return   (Team) factory.getCurrentSession()
                .getNamedQuery("Team.findByAccountId")
                    .setString("accountId", accountId.toString()).list().get(0);
    }
}
