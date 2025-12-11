package com.team8.glamconnect.customer;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team8.glamconnect.provider.Provider;
import com.team8.glamconnect.provider.ProviderService;
import com.team8.glamconnect.provider.ServiceItem;

@Controller
@RequestMapping("/browse")
public class CustomerExtrasController {

    private final ProviderService providerService;

    public CustomerExtrasController(ProviderService providerService) {
        this.providerService = providerService;
    }

    // 1) List all providers (customer browsing page)
    @GetMapping("/providers")
    public String listProviders(Model model) {
        List<Provider> providers = providerService.listProviders();
        model.addAttribute("providers", providers);
        return "browse-providers";
    }

    // 2) View a single provider + their services
    @GetMapping("/providers/{id}")
    public String viewProvider(@PathVariable Long id, Model model) {
        Provider provider = providerService.getProvider(id);
        List<ServiceItem> services = providerService.listServices(id);

        model.addAttribute("provider", provider);
        model.addAttribute("services", services);

        return "browse-provider-details";
    }

    // 3) View a single service by itself
    @GetMapping("/service/{providerId}/{serviceId}")
    public String viewService(
            @PathVariable Long providerId,
            @PathVariable Long serviceId,
            Model model
    ) {
        Provider provider = providerService.getProvider(providerId);

        List<ServiceItem> services = providerService.listServices(providerId);

        ServiceItem selected = services.stream()
                .filter(s -> s.getId().equals(serviceId))
                .findFirst()
                .orElse(null);

        model.addAttribute("provider", provider);
        model.addAttribute("service", selected);

        return "browse-service-details";
    }
}
