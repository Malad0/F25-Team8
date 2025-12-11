package com.team8.glamconnect.provider;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/provider")
public class ProviderMvcController {

    private final ProviderService providerService;

    public ProviderMvcController(ProviderService providerService) {
        this.providerService = providerService;
    }

    // 1) HOME PAGE  ----------------------------------------------------
    @GetMapping("")
    public String providerHome() {
        // Just show the pretty landing page with Sign In / Sign Up buttons
        return "provider-home";
    }

    // 2) SHOW SIGNUP FORM  ---------------------------------------------
    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        model.addAttribute("provider", new Provider());
        return "provider-signup";
    }

    // 3) HANDLE SIGNUP SUBMIT  -----------------------------------------
    @PostMapping("/signup")
    public String handleSignup(@ModelAttribute("provider") Provider provider) {
        // Save the new provider in the database
        Provider saved = providerService.createProvider(provider);

        // After signup, automatically “log in” and go to their dashboard
        return "redirect:/provider/" + saved.getId() + "/dashboard";
    }

    // 4) SHOW SIGNIN FORM  ---------------------------------------------
    @GetMapping("/signin")
    public String showSigninForm() {
        return "provider-signin";
    }

    // 5) HANDLE SIGNIN SUBMIT  -----------------------------------------
    @PostMapping("/signin")
    public String handleSignin(
            @RequestParam("providerId") Long providerId,
            RedirectAttributes redirectAttributes) {

        try {
            Provider provider = providerService.getProvider(providerId);
            // If found, redirect to their dashboard
            return "redirect:/provider/" + provider.getId() + "/dashboard";
        } catch (IllegalArgumentException ex) {
            // If provider not found, show an error on the sign-in page
            redirectAttributes.addFlashAttribute("errorMessage",
                    "Provider not found. Please check your ID and try again.");
            return "redirect:/provider/signin";
        }
    }

    // 6) PROVIDER DASHBOARD  -------------------------------------------
    @GetMapping("/{id}/dashboard")
    public String providerDashboard(@PathVariable Long id, Model model) {

        // Get provider from DB
        Provider provider = providerService.getProvider(id);

        // Get services for this provider
        List<ServiceItem> services = providerService.listServicesForProvider(id);

        // Attach to template
        model.addAttribute("provider", provider);
        model.addAttribute("services", services);

        // Show the dashboard page
        return "provider-dashboard";
    }
}