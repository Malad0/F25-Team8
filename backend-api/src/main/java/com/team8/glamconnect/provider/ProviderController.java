package com.team8.glamconnect.provider;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/providers")
@CrossOrigin
public class ProviderController {

    private final ProviderService svc;

    public ProviderController(ProviderService svc) {
        this.svc = svc;
    }

    // ---- Provider CRUD ----
    @GetMapping
    public List<Provider> list() { return svc.listProviders(); }

    @GetMapping("/{id}")
    public Provider get(@PathVariable Long id) { return svc.getProvider(id); }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Provider create(@RequestBody Provider p) { return svc.createProvider(p); }

    @PutMapping("/{id}")
    public Provider update(@PathVariable Long id, @RequestBody Provider p) {
        return svc.updateProvider(id, p);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Long id) { svc.deleteProvider(id); }

    // ---- Services nested under a provider ----
    @PostMapping("/{id}/services")
    @ResponseStatus(HttpStatus.CREATED)
    public ServiceItem createService(@PathVariable Long id, @RequestBody ServiceItem s) {
        return svc.createServiceForProvider(id, s);
    }

    @GetMapping("/{id}/services")
    public List<ServiceItem> listServices(@PathVariable Long id) {
        return svc.listServices(id);
    }
}
