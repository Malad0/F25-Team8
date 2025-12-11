package com.team8.glamconnect.customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerReviewStore {

    private static final Map<Long, List<List<Object>>> store = new HashMap<>();

    public static List<List<Object>> getReviewsFor(Long providerId) {
        store.putIfAbsent(providerId, new ArrayList<>());
        return store.get(providerId);
    }

    public static void addReview(Long providerId, String name, int stars, String text) {
        List<Object> review = List.of(
                name,
                stars,
                text,
                java.time.LocalDate.now().toString()
        );
        getReviewsFor(providerId).add(review);
    }
}
