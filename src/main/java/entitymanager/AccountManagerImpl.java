/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.AccountDAOImpl;
import databasemodels.Account;

/**
 *
 * @author SAEED
 */
@Service
public class AccountManagerImpl {
    @Autowired
    private AccountDAOImpl accountDAO;

    @Transactional
    public Integer create(Account account) {
        return accountDAO.create(account);
    }

    @Transactional
    public Account get(Integer id) {
        return accountDAO.read(id);
    }

    @Transactional
    public Account get(String username, String password) {
        return accountDAO.get(username, password);
    }
    
    @Transactional
    public void update(Account account) {
        accountDAO.update(account);
    }
    
}
