package com.team8.glamconnect.customer;

import java.net.URI;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/customers")
public class CustomerController {

    private final CustomerService svc;

    public CustomerController(CustomerService svc) {
        this.svc = svc;
    }

    @GetMapping
    public List<Customer> list() {
        return svc.all();
    }

    @PostMapping
    public ResponseEntity<Customer> create(@RequestBody Customer body) {
        Customer saved = svc.create(body);
        return ResponseEntity.created(URI.create("/api/customers/" + saved.getId())).body(saved);
    }

    @GetMapping("/{id}")
    public Customer get(@PathVariable Long id) {
        return svc.get(id);
    }

    @PutMapping("/{id}")
    public Customer update(@PathVariable Long id, @RequestBody Customer body) {
        return svc.update(id, body);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        svc.delete(id);
        return ResponseEntity.noContent().build();
    }
}