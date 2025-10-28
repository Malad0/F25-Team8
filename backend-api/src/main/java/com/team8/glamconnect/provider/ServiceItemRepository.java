package com.team8.glamconnect.provider;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ServiceItemRepository extends JpaRepository<ServiceItem, Long> {
    List<ServiceItem> findByProviderId(Long providerId);
}
