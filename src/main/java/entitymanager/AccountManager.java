/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import databasemodels.Account;

/**
 *
 * @author SAEED
 */
public interface AccountManager {
    
    public Integer create(Account account);
    public Account get(Integer id);
    public void update(Account account);
}