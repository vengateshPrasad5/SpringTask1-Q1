package com.springboot.spring.service;

import com.springboot.spring.entity.Product;

import java.util.List;

public interface ProductService {

     void addProduct (Product product);

     List<Product> showAllProduct();
}
