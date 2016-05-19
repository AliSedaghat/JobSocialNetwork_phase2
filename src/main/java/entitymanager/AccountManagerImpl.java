/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import dao.AccountDAOImpl;
import databasemodels.Account;

/**
 *
 * @author SAEED
 */
public class AccountManagerImpl implements AccountManager{
    
    private AccountDAOImpl accountDAO;

    @Override
    public Integer create(Account account) {
        return accountDAO.create(account);
    }

    @Override
    public Account get(Integer id) {
        return accountDAO.read(id);
    }

    @Override
    public void update(Account account) {
        accountDAO.update(account);
    }
    
}
