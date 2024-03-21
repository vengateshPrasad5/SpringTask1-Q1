package com.springboot.spring.service;

import com.springboot.spring.entity.Product;
import com.springboot.spring.repository.ProductRepository;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
@Component
public class ProductServiceImpl implements ProductService {

    ProductRepository productRepository;
    @Override
    public void addProduct(Product product) {
         productRepository.save(product);
    }

    @Override
    public List<Product> showAllProduct() {
         return productRepository.findAll();
    }
}
