/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Account;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author SAEED
 */
@Repository
public class AccountDAOImpl extends GenericDAOImpl<Account, Integer>{

    public AccountDAOImpl() {
        super(Account.class);
    }
    
    public AccountDAOImpl(Class<Account> type) {
        super(type);
    }

    @Override
    public List<Account> getAll() {
        return factory.getCurrentSession()
                .getNamedQuery("Account.findAll").list();
    }
    
    public Account get(String username, String Password){
        try{
            return (Account) factory.getCurrentSession()
                .getNamedQuery("Account.findByUsernameAndPassword")
                    .setParameter("username", username)
                    .setParameter("password", Password)
                    .list().get(0);
        }catch(Exception e){
            return null;
        }

    }

    @Override
    public Integer getCountAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
