package com.team8.glamconnect.provider;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProviderService {

    private final ProviderRepository providerRepo;
    private final ServiceItemRepository serviceRepo;

    public ProviderService(ProviderRepository providerRepo, ServiceItemRepository serviceRepo) {
        this.providerRepo = providerRepo;
        this.serviceRepo = serviceRepo;
    }

    // ---- Provider CRUD ----
    public List<Provider> listProviders() { return providerRepo.findAll(); }

    public Provider getProvider(Long id) {
        return providerRepo.findById(id).orElseThrow(() -> new IllegalArgumentException("Provider not found: " + id));
    }

    public Provider createProvider(Provider p) { return providerRepo.save(p); }

    public Provider updateProvider(Long id, Provider p) {
        Provider cur = getProvider(id);
        cur.setDisplayName(p.getDisplayName());
        cur.setBio(p.getBio());
        cur.setCategory(p.getCategory());
        cur.setPhone(p.getPhone());
        cur.setLocation(p.getLocation());
        return providerRepo.save(cur);
    }

    public void deleteProvider(Long id) { providerRepo.deleteById(id); }

    // ---- Services for a Provider ----
    public ServiceItem createServiceForProvider(Long providerId, ServiceItem s) {
        getProvider(providerId);              // explode if provider missing
        s.setProviderId(providerId);
        return serviceRepo.save(s);
    }

    public List<ServiceItem> listServices(Long providerId) {
        getProvider(providerId);              // validate provider exists
        return serviceRepo.findByProviderId(providerId);
    }
}
