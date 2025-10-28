package com.team8.glamconnect.customer;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CustomerService {

    private final CustomerRepository repo;

    public CustomerService(CustomerRepository repo) {
        this.repo = repo;
    }

    public List<Customer> all() {
        return repo.findAll();
    }

    public Customer create(Customer body) {
        return repo.save(body);
    }

    public Customer update(Long id, Customer patch) {
        Customer c = repo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Customer not found: " + id));

        if (patch.getFirstName() != null) c.setFirstName(patch.getFirstName());
        if (patch.getLastName()  != null) c.setLastName(patch.getLastName());
        if (patch.getEmail()     != null) c.setEmail(patch.getEmail());
        if (patch.getPhone()     != null) c.setPhone(patch.getPhone());

        return repo.save(c);
    }

    public Customer get(Long id) {
        return repo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Customer not found: " + id));
    }

    public void delete(Long id) {
        repo.deleteById(id);
    }
}