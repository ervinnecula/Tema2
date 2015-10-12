package main;


import java.io.Serializable;
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
    private String productName;
    private double price;
    private double quantiy;
    private Date deliveryDate;

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

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public Date getDeliveryDate() {
        return deliveryDate;
    }
     
}
