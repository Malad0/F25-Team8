# GlamConnect – Software Design  
**Version:** 1  
**Prepared by:** Malado Sissoko & Ndeye Ndiaye
**Project:** GlamConnect  
**Date:** Oct 2025

---

## Table of Contents
- [Revision History](#revision-history)
- [1 Product Overview](#1-product-overview)
- [2 Use Cases](#2-use-cases)
  - [2.1 Use Case Model](#21-use-case-model)
  - [2.2 Use Case Descriptions](#22-use-case-descriptions)
    - [2.2.1 Actor: Provider (Stylist/Tech)](#221-actor-provider-stylisttech)
    - [2.2.2 Actor: Customer](#222-actor-customer)
- [3 UML Class Diagram](#3-uml-class-diagram)
- [4 Database Schema](#4-database-schema)

---

## Revision History
| Name  | Date  | Reason For Changes | Version |
|-------|-------|--------------------|---------|
| Malado & Ndeye | 10/xx/2025 | Initial Design | 1 |

---

## 1 Product Overview
**GlamConnect** is a web app that connects **customers** with local beauty **providers** (stylists, nail techs, lash techs, MUAs).  
Providers publish services (name, category, duration, price, availability), and customers search, book, and review services.  
The goal is a simple, reliable marketplace experience with clear scheduling and communication.

---

## 2 Use Cases

### 2.1 Use Case Model
_Add the image of your use-case diagram here once exported (PNG)._  
**Placeholder:** `doc/Object-Oriented-Design/use-case.png`

### 2.2 Use Case Descriptions

#### 2.2.1 Actor: Provider (Stylist/Tech)

**(P1) Sign Up**  
Provider registers with name, email (unique), password, and phone. On success, they land on a provider dashboard.

**(P2) Log In**  
Provider logs in with email and password. On success, they see stats (upcoming appointments, total bookings, revenue).

**(P3) Update Profile**  
Provider updates business profile: display name, bio, categories (hair, nails, lashes, makeup), contact, location, and photos.

**(P4) Create/Manage Services**  
Provider can create, edit, or delete services. Each service has a name, category, description, price, duration, and visibility.

**(P5) Manage Availability**  
Provider defines weekly availability windows and blackout dates to control when bookings are allowed.

**(P6) View Bookings & Stats**  
Provider views upcoming bookings, cancels when necessary (with reason), and sees KPIs (bookings count, average rating, revenue).

---

#### 2.2.2 Actor: Customer

**(C1) Sign Up**  
Customer registers with name, email (unique), password, and optional phone.

**(C2) Log In**  
Customer logs in and lands on their dashboard: upcoming appointments and recent activity.

**(C3) Browse & Search Services**  
Customer browses services; filters by category, price, duration, rating, and provider; keyword search by service or provider name.

**(C4) Book a Service**  
Customer selects a service, picks a date/time within provider availability, and confirms booking. Booking gets an ID and status.

**(C5) Manage Bookings**  
Customer views, reschedules (if policy allows), or cancels bookings; receives confirmation of changes.

**(C6) Review a Service**  
After completion, customer leaves a rating/comment tied to the booking & service.

---

## 3 UML Class Diagram
_Add the image of your UML class diagram once exported (PNG)._  
**Placeholder:** `doc/Object-Oriented-Design/class-diagram.png`

---

## 4 Database Schema
_Add the image of your database schema once exported (PNG)._  
**Placeholder:** `doc/Object-Oriented-Design/schema.png`