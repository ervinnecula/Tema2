package main;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ervin
 */
public class Product implements Serializable{
    
    public static ArrayList<Product> products = new ArrayList<Product>();
    private String productName;
    private double price;
    private double quantiy;

    public void setQuantiy(double quantiy) {
        this.quantiy = quantiy;
    }

    public double getQuantiy() {
        return quantiy;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductName() {
        return productName;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }
    
    static public double getTotalValueOfProducts(){
        double totalValue = 0;
        for(Product p: products){
            totalValue += p.getPrice() * p.getQuantiy();
        }
        return totalValue;
    }
}
