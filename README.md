# SparkEnergies ⚡
### An Advanced Electricity Bill Management and Distribution System
**Course:** CSE370: Database Systems | BRAC University  
**Term:** Spring 2026  
**Group No:** 06 | **Lab Section:** 06  

---

## 👥 Group Members & Contributions
* **Mir Mohammad Sajedul Islam** (ID: 23201376) — Frontend + Backend Development
* **Bishal Golder** (ID: 23201378) — Frontend + Backend Development
* **Salman Naguib** (ID: 23201031) — Frontend + Backend Development

---

## 📝 Project Overview
SparkEnergies is a web-based platform engineered to replace traditional, error-prone manual utility distribution workflows. By utilizing a centralized structural database normalized to the **Third Normal Form (3NF)**, the system manages meters, customers, dynamic pricing slabs, automated service notifications, and field agent routing logs smoothly.

### Key Objectives:
* Eliminating transparency bottlenecks between customers and agents.
* Enforcing billing strictness through digital safety thresholds.
* Maximizing route transparency for distribution operators.

---

## 🚀 System Architecture & Key Features

SparkEnergies is engineered around a robust **Role-Based Access Control (RBAC)** architecture that divides system functionalities into three distinct user tiers, backed by automated database constraints and strict business logic enforcements.

### 👥 Multi-Tier Application Architecture

#### 1. Administrator Dashboard (System Operations)
* **Wallet & Financial Management:** Search for specific customer profiles and securely execute account balance recharges to facilitate digital billing transactions.
* **Employee Directory & Authentication:** Securely register new field personnel into the system, dynamically assigning employee identifiers.
* **Customer Directory & Audit Ledger:** Cross-reference operational records to generate a comprehensive customer master directory listing consumer classifications, current balances, and contact information.
* **Global Inventory Mapping:** Introduce new physical meter nodes into the central utility ecosystem, where the system automatically manages state transitions (`Available` vs. `Assigned`) upon database entry.
* **Unpaid Billings Queue:** Isolate and flag active default accounts via multi-table joins to monitor pending revenue collection.

#### 2. Field Employee Dashboard (Route Operations)
* **Assigned Route & Meter Tracking:** View a personalized routing dashboard listing assigned consumer meters, customer details, and location maps to organize physical field visits.
* **Smart Reading Logs:** Monitor the last recorded billing timestamps of assigned meters to intelligently prioritize routing queues and identify neglected accounts.
* **Historical Bill Ledger:** Review a granular, historical timeline of all individual billing operations processed by the authenticated field employee for accountability.

#### 3. Customer Portal (Consumer Ecosystem)
* **Digital Wallet & Self-Service Payments:** Review comprehensive billing statement ledgers with transparent `Paid`/`Unpaid` state badges, and settle invoices instantaneously using integrated digital wallet balances.
* **Automated Meter Acquisition:** Browse compatible meter hardware blueprints dynamically matched to specific user categories (e.g., Residential, Corporate), automate connection subscription fee deductions via the digital wallet, and trigger immediate server-side meter provisioning.
* **Visual Usage Analytics:** Track 6-month electricity consumption trends through an interactive graphic engine to evaluate energy efficiency over time.
* **Dynamic PDF Invoice Compilations:** Stream and download auto-generated, print-formatted PDF billing sheets containing itemized utility fees for legal and personal compliance.

---

### 🛡️ Core Business Logic & Database Enforcements

* **Dynamic Multi-Slab Tariff Evaluation:** Rather than hardcoding prices, billing cycles extract pricing metrics (`Unit_cost`, `VAT`, `Demand_Charge`, `Meter_rent`) on-the-fly by parsing user classification thresholds against normalized tariff configurations.
* **Strict Numerical Input Validation:** Frontend and backend validation layers intercept and cancel updates if an employee inputs a current reading that is lower than the historically verified previous reading (`Current_reading < Prev_reading`).
* **28-Day Billing Safety Lock:** Enforces compliance strictness by converting the client's localized billing timestamp and the target meter's `MAX(Date)` into Unix seconds. If the difference is less than a 28-day threshold, the execution halt breaks, throwing a safety exception to block premature or duplicate bill generation.
* **Asynchronous Alert Infrastructure:** Intercepts critical database transitions (such as successful balance recharges or new invoice creations) to instantly route notifications straight to the affected user's dashboard notifications ledger.

---

## 📁 Repository Directory Layout
```text
SparkEnergies/
│
├── database/               
│   └── sparkenergies.sql        # Core relational database layout with index configurations
│
├── documentation/          
│   ├── ER_diagram.png           # Entity-Relationship diagram mapping core attributes
│   ├── schema_diagram.png       # Relational mapping schema structure
│   ├── normalized_schema.png    # 3NF layout schema map
│   └── project_report.pdf       # Formal academic architecture documentation
│
└── src/                    
    ├── index.php                # System landing gate and global authentication router
    ├── db.php                   # Secure connection controller utilizing mysqli prepared queries
    ├── admin_dashboard.php      # Administrator routing control and management logic
    ├── employee_dashboard.php   # Field agent console featuring the 28-day threshold grid
    ├── customer_dashboard.php   # Consumer ledger profile and interactive payment gate
    ├── download_bill.php        # Printable customer invoice compiler
    ├── signup.php               # Secure consumer customer creation controller
    └── logout.php               # Complete session termination pipeline

## 🛠️ Technology Stack
- **Core Backend Engine:** PHP 8.2+

- **Database Management System:** MySQL / MariaDB (Structured with InnoDB constraints)

- **User Interface & Styles:** Bootstrap 5 (Responsive Layout Engine) & Custom CSS

- **Development Toolkit:** Visual Studio Code & Git Version Management Pipeline