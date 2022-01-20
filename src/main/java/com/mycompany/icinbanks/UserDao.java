/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.icinbanks;

import entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author a
 */
public class UserDao  {
      private static SessionFactory factory;
      private static Transaction transaction;
      private static Session s;
    public UserDao(SessionFactory factory)
    {
    this.factory = factory;
    }
    public User getUserByEmailPassword(String email , String pass){
    
    User u = null;
        try {
            String query="from User where username =: e and password =: p";
             s =this.factory.openSession();
           
                    Query q= s.createQuery(query);
                    
                    q.setParameter("e",email);
                    q.setParameter("p",pass);
                    
                    u = (User)q.uniqueResult();
                    s.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    return u;
    } 
    public  void withdraw(User u)
    {
        System.out.println("<<<<<<<<<<<<<<<<<<<<");
         s =this.factory.openSession();
         System.out.println(">>>>>>>>>>>>>>>>>>>>>");
         transaction=s.beginTransaction();
         s.saveOrUpdate(u);
         transaction.commit();
         System.out.println("Successfully withdrawn **************");
    }
    
    
}

