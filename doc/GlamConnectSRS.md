# Software Requirements Specification
## For GlamConnect

Version 0.1  
Prepared by Team 8  
UNCG – CSC 340  
September 18, 2025

---

Table of Contents
=================
* [Revision History](#revision-history)
* 1 [Introduction](#1-introduction)
  * 1.1 [Document Purpose](#11-document-purpose)
  * 1.2 [Product Scope](#12-product-scope)
  * 1.3 [Definitions, Acronyms and Abbreviations](#13-definitions-acronyms-and-abbreviations)
  * 1.4 [References](#14-references)
  * 1.5 [Document Overview](#15-document-overview)
* 2 [Product Overview](#2-product-overview)
  * 2.1 [Product Functions](#21-product-functions)
  * 2.2 [Product Constraints](#22-product-constraints)
  * 2.3 [User Characteristics](#23-user-characteristics)
  * 2.4 [Assumptions and Dependencies](#24-assumptions-and-dependencies)
* 3 [Requirements](#3-requirements)
  * 3.1 [Functional Requirements](#31-functional-requirements)
    * 3.1.1 [Customer Functional Requirements](#311-customer-functional-requirements)
    * 3.1.2 [User Interfaces](#312-user-interfaces)
    * 3.1.3 [Hardware Interfaces](#313-hardware-interfaces)
    * 3.1.4 [Software Interfaces](#314-software-interfaces)
  * 3.2 [Non-Functional Requirements](#32-non-functional-requirements)
    * 3.2.1 [Performance](#321-performance)
    * 3.2.2 [Security](#322-security)
    * 3.2.3 [Reliability](#323-reliability)
    * 3.2.4 [Availability](#324-availability)
    * 3.2.5 [Compliance](#325-compliance)
    * 3.2.6 [Cost](#326-cost)
    * 3.2.7 [Deadline](#327-deadline)

---

## Revision History
| Name            | Date        | Reason For Changes        | Version |
| --------------- | ----------- | ------------------------- | ------- |
| Malado Sissoko  | 2025-09-18  | Initial draft – Customer  | 0.1     |

---

## 1. Introduction

### 1.1 Document Purpose
This SRS defines the requirements for GlamConnect, a platform that connects customers with glam/beauty service providers. The audience is our CSC 340 team, instructor, and student testers.

### 1.2 Product Scope
GlamConnect lets customers browse services, book appointments, manage their profile, and write reviews. Providers list services, manage availability, and reply to reviews. The goal is to simplify finding reliable glam services for students and local users.

### 1.3 Definitions, Acronyms and Abbreviations
- **SRS** – Software Requirements Specification  
- **UI** – User Interface  
- **Customer** – End-user seeking services  
- **Provider** – Glam professional offering services

### 1.4 References
- CSC 340 course materials (syllabus, slides, assignments)
- Team repository documentation

### 1.5 Document Overview
Section 2 summarizes the product and users. Section 3 states detailed functional and non-functional requirements.

---

## 2. Product Overview

### 2.1 Product Functions
- Customer profile creation and updates  
- Browse and filter glam services  
- Appointment booking and history  
- Write and view reviews  
- Provider service listings and review replies

### 2.2 Product Constraints
- Browser-based (desktop and mobile)  
- Semester timeline deliverables  
- GitHub workflow for source control

### 2.3 User Characteristics
- **Customers:** mostly students; low to moderate technical skills  
- **Providers:** small business owners; moderate technical skills  
- **Admin (if used):** manages access/content

### 2.4 Assumptions and Dependencies
- Stable internet connection  
- Simple hosting (e.g., GitHub Pages for prototype)  
- Future: possible third-party API for maps/location

---

## 3. Requirements

### 3.1 Functional Requirements

#### 3.1.1 Customer Functional Requirements
CFR-01 The system **shall allow a customer to create a profile** with name and contact information.  
CFR-02 The system **shall allow a customer to update their profile** (name, contact, preferences).  
CFR-03 The system **shall display a catalog of services** with basic details (category, price range, location).  
CFR-04 The system **shall allow customers to filter or search services** by keyword, category, or price range.  
CFR-05 The system **shall allow a customer to view a provider’s service details** including description and sample work.  
CFR-06 The system **shall allow a customer to request/book an appointment time** from a service page.  
CFR-07 The system **shall record and display a customer’s booking history**.  
CFR-08 The system **shall allow a customer to submit a review** (rating + comment) for a completed booking.  
CFR-09 The system **shall prevent duplicate reviews for the same booking**.  
CFR-10 The system **shall allow a customer to edit or delete their own review**.

#### 3.1.2 User Interfaces
- A top navigation menu appears on all pages.  
- Forms use clear labels, required field indicators, and error messages.  
- Layout is responsive for laptop and mobile screens.

#### 3.1.3 Hardware Interfaces
- Standard web browser on laptop, tablet, or smartphone (no special hardware).

#### 3.1.4 Software Interfaces
- Web browser (latest Chrome/Firefox/Safari/Edge).  
- Future: optional integration with an external API (e.g., map/location).  

---

### 3.2 Non-Functional Requirements

#### 3.2.1 Performance
NFR-P1 Pages **shall load within 3 seconds** on campus Wi-Fi under normal load.

#### 3.2.2 Security
NFR-S1 Customer profile data **shall be protected** and only editable by the profile owner.  
NFR-S2 Reviews **shall be tied to a completed booking** to reduce spam.

#### 3.2.3 Reliability
NFR-R1 The prototype **shall handle at least 20 concurrent users** without crashing during demos.

#### 3.2.4 Availability
NFR-A1 The system **shall be available 95% of the time** during the semester.

#### 3.2.5 Compliance
NFR-C1 Follow instructor’s coding/documentation standards.

#### 3.2.6 Cost
NFR-Cost1 Use free tools/services (GitHub, free hosting) for the prototype.

#### 3.2.7 Deadline
NFR-D1 Final delivery by **December 9, 2025** (course schedule).