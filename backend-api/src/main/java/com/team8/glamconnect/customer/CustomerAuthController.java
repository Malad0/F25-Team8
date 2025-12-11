package com.team8.glamconnect.customer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/customer")
public class CustomerAuthController {

    private final CustomerRepository repo;

    public CustomerAuthController(CustomerRepository repo) {
        this.repo = repo;
    }

    // ======================
    // SIGNUP (GET + POST)
    // ======================

    // show signup form
    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "customer-signup";
    }

    // handle signup
    @PostMapping("/signup")
    public String processSignup(@ModelAttribute Customer formCustomer, Model model) {

        // if email already exists, show error on same page
        if (repo.existsByEmail(formCustomer.getEmail())) {
            model.addAttribute("error", "Email already in use.");
            model.addAttribute("customer", formCustomer);
            return "customer-signup";
        }

        // save customer (includes password field)
        Customer saved = repo.save(formCustomer);

        // ✅ after signup, send them to login
        return "redirect:/customer/home/" + saved.getId();

    }

    // ======================
    // LOGIN (GET + POST)
    // ======================

    // show login form
    @GetMapping("/login")
    public String loginPage() {
        return "customer-login";
    }

    // handle login
    @PostMapping("/login")
    public String processLogin(@RequestParam String email,
                               @RequestParam String password,
                               Model model) {

        Customer customer = repo.findByEmail(email).orElse(null);

        if (customer == null || customer.getPassword() == null ||
                !customer.getPassword().equals(password)) {

            model.addAttribute("error", "Invalid email or password.");
            return "customer-login";
        }

        // ✅ login success → go to personalized home page
        model.addAttribute("customer", customer);
        return "customer-home";
        // if you prefer the /home/{id} URL instead:
        // return "redirect:/customer/home/" + customer.getId();
    }
}
