/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.util.ArrayList;

/**
 *
 * @author Ervin
 */
public class Database {
    public static ArrayList<User> users = new ArrayList<User>();
    public static ArrayList<Product> products = new ArrayList<Product>();
    
    static public void addUserToDatabase(User user){
        users.add(user);     
    }
    
    public boolean checkIfUserExists(User user){
        
        for(User u: users){
            if(u.getUserName().equals(user.getUserName()) && u.getUserPassword().equals(user.getUserPassword())){
                return true;
            }
        }
        return false;
    }
    
    public void addProductToDatabase(Product product){
        products.add(product);
    }
    
    public double getTotalValueOfProducts(ArrayList<Product> products){
        double totalValue = 0;
        for(Product p: products){
            totalValue += p.getPrice();
        }
        return totalValue;
    }
    
    public void addDummyData(){
        User u1 = new User("Gigel","1234");
        User u2 = new User("Popescu","5678");
        User u3 = new User("Georgescu","4444");
        users.add(u1);
        users.add(u2);
        users.add(u3);
    }
}
