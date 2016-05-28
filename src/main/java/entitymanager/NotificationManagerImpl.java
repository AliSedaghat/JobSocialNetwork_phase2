/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import dao.NotificationDAOImpl;
import databasemodels.Notification;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author SAEED
 */
@Service
public class NotificationManagerImpl {
    @Autowired
    private NotificationDAOImpl notificationDAO;
    
    @Transactional
    public List<Notification> getByReceiverId(Integer id){
        return notificationDAO.getByReceiverId(id);
    }
}
