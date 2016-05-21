/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import databasemodels.Team;

/**
 *
 * @author SAEED
 */
public interface TeamManager {
    public Integer getCountAll();
    public void createOrUpdate(Team team);
    public Team getbyAccountId(Integer accountId);
}
