package com.spring.crud.controller;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.crud.model.Product;
import com.spring.crud.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/add-product")
	public String home() {
		return "add_product";
	}
	
	@RequestMapping(path = "/product-process" , method = {RequestMethod.GET, RequestMethod.POST})
	public String productProcess(@ModelAttribute Product product , Model model , @RequestParam(required = true , name = "checkBox") String check ) {
		productService.createProduct(product);
		model.addAttribute("success", "Product Added Successfully");
		return "add_product_success";
	}
	
	@RequestMapping(path = "/product-display")
	public String productDisplay(Model model) {
		List<Product> products = productService.getAllProducts();
		model.addAttribute("products", products);
		model.addAttribute("productId", "Product ID ");
		model.addAttribute("productName", "Product Name ");
		model.addAttribute("productDescription", "Product Description ");
		model.addAttribute("productPrice", "Product Price ");
		model.addAttribute("productAction", "Product Action ");
		
		return "product_display";
	}
	
	@RequestMapping(path = "/delete-product/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request) {
		this.productService.deleteProduct(productId);
		System.out.println("Success");
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/product-display");
		return redirectView;
	}
	@RequestMapping(path = "/update-product/{productId}")
	public String updateProduct(@PathVariable("productId") int productId  , Model model) {
		Product product = this.productService.getProduct(productId);
		System.out.println(product);
		model.addAttribute("singleproduct", product);
		return "update_product";
	}
}
