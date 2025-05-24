package enset_bdcc.bdccensetspringmvc.web;

import enset_bdcc.bdccensetspringmvc.entities.Product;
import enset_bdcc.bdccensetspringmvc.repository.ProductRepository;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.service.annotation.GetExchange;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/")
    public String home() {

        return "redirect:/user/index";
    }
    @GetMapping("/user/index")
    public String index(Model model) {
        List<Product> products = productRepository.findAll();
        model.addAttribute("productList", products);
        return "products";
    }
    @PostMapping("/admin/delete")
    public String delete(@RequestParam(name = "id") Long id){
        productRepository.deleteById(id);
        return "redirect:/user/index";
    }
    @GetMapping("/admin/newProduct")
    public String newProduct(Model model) {
        model.addAttribute("product", new Product());
        return "new-product";
    }
    @PreAuthorize("hasRole('ADMIN')")
    @PostMapping ("/admin/saveProduct")
    public String saveProduct(@Valid Product product, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {  return "new-product"; }
        productRepository.save(product);
        return "redirect:/admin/newProduct";
    }
    @GetMapping("/notAuthorized")
    public String notAuthorized() {
        return "/notAuthorized";
    }

    @GetMapping("/login")
    public String login() {
        return "login"; //
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "login";
    }
    @GetMapping("/user/search")
    public String searchProducts(@RequestParam(name = "keyword", required = false) String keyword, Model model) {
        List<Product> products;
        if (keyword != null && !keyword.isEmpty()) {
            products = productRepository.findByNameContainsIgnoreCase(keyword);
        } else {
            products = productRepository.findAll();
        }
        model.addAttribute("productList", products);
        model.addAttribute("keyword", keyword);
        return "products";
    }

    @GetMapping("/admin/editProduct")
    public String editProduct(@RequestParam("id") Long id, Model model) {
        Product product = productRepository.findById(id).orElse(null);
        if (product == null) return "redirect:/user/index"; // or error page
        model.addAttribute("product", product);
        return "new-product"; // reuse form
    }


}
