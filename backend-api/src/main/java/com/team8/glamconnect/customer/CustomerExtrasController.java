package com.team8.glamconnect.customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/customers")
public class CustomerExtrasController {

    // Temporary in-memory list (so you can demo in Thunder Client)
    private List<Map<String, Object>> subscriptions = new ArrayList<>();
    private List<Map<String, Object>> reviews = new ArrayList<>();

    // ✅ GET all available services (simple demo version)
    @GetMapping("/services")
    public List<Map<String, Object>> getAllServices() {
        List<Map<String, Object>> services = new ArrayList<>();

        Map<String, Object> s1 = Map.of(
            "id", 1,
            "name", "Knotless Box Braids",
            "category", "Braids",
            "price", 180.0,
            "description", "Mid-back length, hair included."
        );

        Map<String, Object> s2 = Map.of(
            "id", 2,
            "name", "Classic Lash Extensions",
            "category", "Lashes",
            "price", 85.0,
            "description", "Natural classic set with aftercare tips included."
        );

        services.add(s1);
        services.add(s2);

        return services;
    }

    // ✅ POST - Subscribe to a service
    @PostMapping("/{customerId}/subscribe")
    public Map<String, Object> subscribe(@PathVariable Long customerId, @RequestBody Map<String, Object> body) {
        Map<String, Object> record = new HashMap<>();
        record.put("subscriptionId", subscriptions.size() + 1);
        record.put("customerId", customerId);
        record.put("serviceId", body.get("serviceId"));
        subscriptions.add(record);
        return record;
    }

    // ✅ POST - Write a review for a service
    @PostMapping("/{customerId}/review")
    public Map<String, Object> review(@PathVariable Long customerId, @RequestBody Map<String, Object> body) {
        Map<String, Object> review = new HashMap<>();
        review.put("reviewId", reviews.size() + 1);
        review.put("customerId", customerId);
        review.put("serviceId", body.get("serviceId"));
        review.put("rating", body.get("rating"));
        review.put("comment", body.get("comment"));
        reviews.add(review);
        return review;
    }
}
