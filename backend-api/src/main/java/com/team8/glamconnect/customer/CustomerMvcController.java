package com.team8.glamconnect.customer;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;   // ⭐ REQUIRED
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team8.glamconnect.provider.Provider;
import com.team8.glamconnect.provider.ProviderService;
import com.team8.glamconnect.provider.ServiceItem;

@Controller
@RequestMapping("/customer")
public class CustomerMvcController {

    private final CustomerService customerService;
    private final ProviderService providerService;

    public CustomerMvcController(CustomerService customerService,
                                 ProviderService providerService) {
        this.customerService = customerService;
        this.providerService = providerService;
    }

    // *******************************
    // CUSTOMER HOME PAGE
    // *******************************
    @GetMapping("/home/{id}")
    public String customerHome(@PathVariable Long id, Model model) {
        Customer customer = customerService.get(id);
        model.addAttribute("customer", customer);
        return "customer-home";
    }

    @GetMapping("")
    public String redirectToLogin() {
        return "redirect:/customer/login";
    }

    // *******************************
    // BROWSE SERVICES
    // *******************************
    @GetMapping("/browse")
    public String browseServices(Model model) {
        List<ServiceItem> services = providerService.listAllServices();
        model.addAttribute("services", services);
        return "customer-browse";
    }

    // *******************************
    // PROVIDER DETAILS PAGE
    // *******************************
    @GetMapping("/provider/{providerId}")
    public String providerDetails(@PathVariable Long providerId, Model model) {
        Provider provider = providerService.getProvider(providerId);
        List<ServiceItem> services = providerService.listServicesForProvider(providerId);

        model.addAttribute("provider", provider);
        model.addAttribute("services", services);

        return "customer-provider-details";
    }

    // *******************************
    // BOOKING PAGE
    // *******************************
    @GetMapping("/book/{serviceId}")
public String bookService(@PathVariable Long serviceId, Model model) {

    ServiceItem service = providerService.getService(serviceId);

    if (service == null) {
        model.addAttribute("error", "Service not found.");
        return "customer-book-error";
    }

    model.addAttribute("service", service);
    return "customer-book";
}


@GetMapping("/book/confirm")
public String confirmBooking(@RequestParam Long serviceId,
                             @RequestParam String date,
                             @RequestParam String time,
                             Model model) {

    ServiceItem service = providerService.getService(serviceId);

    model.addAttribute("service", service);
    model.addAttribute("providerId", service.getProviderId());  // ⭐ ADD THIS
    model.addAttribute("message", "Your appointment is confirmed for " + date + " at " + time);

    return "customer-book";
}


    // *******************************
    // REVIEWS PAGE
    // *******************************
    @GetMapping("/reviews/{providerId}")
    public String viewReviews(@PathVariable Long providerId, Model model) {
        Provider provider = providerService.getProvider(providerId);
        List<List<Object>> reviews = CustomerReviewStore.getReviewsFor(providerId);

        model.addAttribute("provider", provider);
        model.addAttribute("reviews", reviews);

        return "customer-reviews";
    }
    @PostMapping("/reviews/{providerId}")
public String submitReview(@PathVariable Long providerId,
                           @RequestParam String name,
                           @RequestParam int stars,
                           @RequestParam String text) {

    CustomerReviewStore.addReview(providerId, name, stars, text);

    return "redirect:/customer/reviews/" + providerId;
}


    // ===============================
    // CUSTOMER PROFILE PAGE
    // ===============================
    @GetMapping("/profile/{id}")
    public String customerProfile(@PathVariable Long id, Model model) {
        Customer customer = customerService.get(id);
        model.addAttribute("customer", customer);
        return "customer-profile";
    }

    // ===============================
    // EDIT PROFILE FORM
    // ===============================
    @GetMapping("/profile/edit/{id}")
    public String editProfile(@PathVariable Long id, Model model) {
        Customer customer = customerService.get(id);
        model.addAttribute("customer", customer);
        return "customer-profile-edit";
    }

    // ===============================
    // HANDLE PROFILE UPDATE
    // ===============================
    @PostMapping("/profile/update/{id}")
    public String updateProfile(@PathVariable Long id,
                                @RequestParam String firstName,
                                @RequestParam String lastName,
                                @RequestParam String email,
                                @RequestParam(required = false) String phone) {

        customerService.updateBasicInfo(id, firstName, lastName, email, phone);

        return "redirect:/customer/profile/" + id + "?updated=true";
    }
}
