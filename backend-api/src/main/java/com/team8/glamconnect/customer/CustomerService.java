package com.team8.glamconnect.customer;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CustomerService {
    private final CustomerRepository repo;

    public CustomerService(CustomerRepository repo) {
        this.repo = repo;
    }

    public List<Customer> all() {
        return repo.findAll();
    }

    public Customer create(Customer c) {
        if (repo.existsByEmail(c.getEmail())) {
            throw new IllegalArgumentException("Email already in use");
        }
        return repo.save(c);
    }

    public Customer get(Long id) {
        return repo.findById(id).orElseThrow(() -> new IllegalArgumentException("Not found"));
    }

    public Customer update(Long id, Customer body) {
        Customer existing = get(id);
        if (!existing.getEmail().equals(body.getEmail()) && repo.existsByEmail(body.getEmail())) {
            throw new IllegalArgumentException("Email already in use");
        }
        existing.setName(body.getName());
        existing.setEmail(body.getEmail());
        existing.setPhone(body.getPhone());
        return repo.save(existing);
    }

    public void delete(Long id) {
        repo.deleteById(id);
    }
}