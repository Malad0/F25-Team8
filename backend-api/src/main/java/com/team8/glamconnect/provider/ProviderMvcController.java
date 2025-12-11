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

    // 1) HOME PAGE ----------------------------------------------------
    @GetMapping("")
    public String providerHome() {
        return "provider-home";
    }

    // 2) SHOW SIGNUP FORM ---------------------------------------------
    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        model.addAttribute("provider", new Provider());
        return "provider-signup";
    }

    // 3) HANDLE SIGNUP SUBMIT -----------------------------------------
    @PostMapping("/signup")
    public String handleSignup(@ModelAttribute("provider") Provider provider) {
        Provider saved = providerService.createProvider(provider);
        return "redirect:/provider/" + saved.getId() + "/dashboard";
    }

    // 4) SHOW SIGNIN FORM ---------------------------------------------
    @GetMapping("/signin")
    public String showSigninForm() {
        return "provider-signin";
    }

    // 5) HANDLE SIGNIN SUBMIT  — FIXED ✔️ ------------------------------
    @PostMapping("/signin")
    public String handleSignin(
            @RequestParam("providerId") String providerIdRaw,
            RedirectAttributes redirectAttributes) {

        try {
            // convert safely
            Long providerId = Long.parseLong(providerIdRaw.trim());

            Provider provider = providerService.getProvider(providerId);

            return "redirect:/provider/" + provider.getId() + "/dashboard";

        } catch (Exception ex) {
            // covers: blank input, letters, provider not found, etc.
            redirectAttributes.addFlashAttribute(
                    "errorMessage",
                    "Invalid provider ID. Please try again."
            );
            return "redirect:/provider/signin";
        }
    }

    // 6) PROVIDER DASHBOARD -------------------------------------------
    @GetMapping("/{id}/dashboard")
    public String providerDashboard(@PathVariable Long id, Model model) {

        Provider provider = providerService.getProvider(id);
        List<ServiceItem> services = providerService.listServicesForProvider(id);

        model.addAttribute("provider", provider);
        model.addAttribute("services", services);

        return "provider-dashboard";
    }
}
