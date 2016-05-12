/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Account;
import java.util.List;

/**
 *
 * @author SAEED
 */
public class AccountDAOImpl extends GenericDAOImpl<Account, Integer>{

    public AccountDAOImpl(Class<Account> type) {
        super(type);
    }

    @Override
    public List<Account> getall() {
        return factory.getCurrentSession()
                .getNamedQuery("Account.findAll").list();
    }
    
    public Account get(String username, String Password){
        try{
            return (Account) factory.getCurrentSession()
                .getNamedQuery("Account.findByUsernameAndPassword").list().get(0);
        }catch(Exception e){
            return null;
        }

    }
}
