/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Account;
import databasemodels.Notification;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author SAEED
 */
@Repository
public class NotificationDAOImpl extends GenericDAOImpl<Notification, Integer>{

    public NotificationDAOImpl() {
        super(Notification.class);
    }
    
    public NotificationDAOImpl(Class<Notification> type) {
        super(type);
    }

    @Override
    public List<Notification> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Long getCountAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public List<Notification> getByReceiverId(Integer id){
        try{
            return factory.getCurrentSession()
                    .getNamedQuery("Notification.findByReceiverId")
                    .setParameter("receiver", new Account(id)).list();
        }catch(Exception e){
            return new ArrayList<>();
        }
    }
}
