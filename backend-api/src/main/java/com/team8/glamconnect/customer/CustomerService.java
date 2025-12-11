package com.team8.glamconnect.customer;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

    public Customer get(Long id) {
        return repo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Customer not found: " + id));
    }

    public Customer findByEmail(String email) {
        return repo.findByEmail(email).orElse(null);
    }
    public void updateBasicInfo(Long id, String firstName, String lastName,
                            String email, String phone) {

    Customer c = repo.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Customer not found: " + id));

    c.setFirstName(firstName);
    c.setLastName(lastName);
    c.setEmail(email);
    c.setPhone(phone);

    repo.save(c);
}

}
