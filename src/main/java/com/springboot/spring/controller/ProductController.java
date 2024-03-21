package com.springboot.spring.controller;

import com.springboot.spring.entity.Product;
import com.springboot.spring.service.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private ProductServiceImpl productServiceImpl;

    @RequestMapping()
    public String home(){
        return "home.jsp";
    }

    @RequestMapping("/addProduct")
    public String addProduct( Product product){
        System.out.println(product);
        productServiceImpl.addProduct(product);
        return "addProduct.jsp";
    }

    @GetMapping("/showProduct")
    public ModelAndView showProduct(){
        ModelAndView mv =  new ModelAndView();
        List<Product> productList =  productServiceImpl.showAllProduct();
        mv.addObject("list",productList);
        mv.setViewName("showProduct.jsp");
        return mv;
    }

}
