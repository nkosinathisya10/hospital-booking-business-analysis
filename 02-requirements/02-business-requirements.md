# 02 · Business Requirements Document (BRD)

| Document ID | Version | Date | Author | Status |
|---|---|---|---|---|
| MCC-BA-11 | 1.0 | 24 November 2026 | Nkosinathi Ndlovu, Business Analyst | Approved |

---

## 1. Purpose

This document states **what the business needs** from the booking portal, and the rules it must follow. It does not describe how the system will be built. Detailed system requirements are in [03 · Functional and non-functional requirements](03-functional-and-non-functional-requirements.md).

## 2. Business requirements

| ID | Business requirement | Objectives | Root cause / source |
|---|---|---|---|
| **BR-01** | Patients must be able to reserve a visit time before leaving home. | BO-01, BO-02, BO-04 | RC-01 |
| **BR-02** | The clinic must be able to set capacity per branch, service and day, while protecting space for walk-ins. | BO-02 | RC-03 |
| **BR-03** | Staff must know which patients are expected before the day starts. | BO-01 | RC-02 |
| **BR-04** | Patients must be reminded of upcoming visits, and missed slots must be reused. | BO-03 | RC-05 |
| **BR-05** | Patients must be able to see which services run on which days at each branch. | BO-02 | RC-04 |
| **BR-06** | Patients without a smartphone must still be able to book. | BO-04 | RC-01, F-08 |
| **BR-07** | The solution must be usable by people with disabilities. | BO-05 | F-10 |
| **BR-08** | Managers must be able to see demand, no-shows and turned-away patients. | BO-02, BO-03 | F-12 |
| **BR-09** | Patient information must be handled lawfully and kept confidential. | C-04 | POPIA, NHA |

## 3. Business rules

Business rules are the policies the system must enforce. They were agreed with the sponsor and sisters-in-charge in the requirements workshop on 20 November 2026.

| ID | Rule | Why | Source |
|---|---|---|---|
| **BRL-01** | At least **30%** of each branch's daily capacity is kept for walk-ins and emergencies. | Protects patients who are sick today and did not book | Staff workshop (F-11) |
| **BRL-02** | A booked slot is held until **30 minutes** after its start time. If the patient has not checked in, the slot is released to walk-ins and the booking is marked as a no-show. | Reuses capacity that would otherwise be lost | D-05 |
| **BRL-03** | A patient may hold only **one booking per service per day**. | Stops slots being blocked by duplicate bookings | Sponsor |
| **BRL-04** | A service can only be booked on the days and hours it runs at that branch. | Stops patients coming on the wrong day (RC-04) | Sisters-in-charge |
| **BRL-05** | Bookings open **14 days** ahead and close **2 hours** before the slot. | Balances planning with fairness | D-01 |
| **BRL-06** | A patient is identified by a South African ID number, a passport or asylum document number, **or** a clinic folder number. Patients without any of these can be booked at reception. | Nobody is excluded for not having an ID | D-02 |
| **BRL-07** | SMS messages show only the clinic name, branch, date, time and booking reference. They never name the service or a condition. | Confidentiality (National Health Act s14) | D-04 |
| **BRL-08** | A caregiver or community health worker may book for another person only with that person's recorded consent, up to 5 dependants per account. | Lawful processing on behalf of others (POPIA) | D-06 |
| **BRL-09** | A booking can be changed or cancelled up to 2 hours before the slot. A freed slot returns to the pool immediately. | Gives others a chance to use it | Sponsor |
| **BRL-10** | Patients with 3 no-shows in 90 days are phoned by reception, not blocked. | Fair access; no-shows often have a real reason | Clinic committee |
| **BRL-11** | Slot length per service is set by the sister-in-charge (for example 15 minutes for a general visit, 30 minutes for a first antenatal visit). | Matches real consultation times | Sisters-in-charge |

## 4. Scope of this release

| In scope | Out of scope |
|---|---|
| Patient registration, booking, changing and cancelling | Clinical records and consultation notes |
| Caregiver booking for dependants | Telemedicine |
| SMS confirmations and reminders | Medicine stock |
| Assisted booking, expected-patient list, check-in, walk-ins | Payments |
| Capacity and service calendar settings | WhatsApp booking (later release) |
| Daily dashboard and monthly export | Integration with hospital referral systems |

## 5. Stakeholder requirements

| Stakeholder | Needs | Met by |
|---|---|---|
| Patients (S06) | Know they will be seen; spend less time and money | BR-01, BR-04, BR-05 |
| Older and chronic patients (S07) | Simple steps; help available if needed | BR-06, NFR-10 |
| Patients with disabilities (S08) | Book independently with assistive technology | BR-07 |
| Caregivers (S09) | Book for more than one person | BR-01, BRL-08 |
| Sisters-in-charge (S02) | Control capacity; protect walk-ins | BR-02, BRL-01 |
| Reception clerks (S04) | Calmer mornings, folders ready | BR-03, BR-06 |
| Operations manager (S01) | Demand and no-show data | BR-08 |
| District information officer (S10) and POPIA officer (S13) | Secure, lawful handling of data | BR-09 |

## 6. Assumptions and dependencies

| ID | Assumption or dependency | Status |
|---|---|---|
| A-01 | Patients will keep booked times if they get a reminder the day before | ⚠️ To be measured in a 4-week pilot at Edendale |
| A-02 | Reception has a computer and stable internet at all branches | ✅ Confirmed, with offline check-in as backup (NFR-08) |
| A-03 | Patients can be identified by ID, passport or folder number | ✅ Confirmed (BRL-06) |
| DEP-01 | An SMS gateway provider is contracted by the district | ⏳ Procurement in progress |
| DEP-02 | Hosting in a South African cloud region is approved by the district | ✅ Approved (D-03) |

## 7. Approval

| Name | Role | Decision | Date |
|---|---|---|---|
| Zanele Mthethwa | Clinic Operations Manager (Sponsor) | Approved | 24 November 2026 |
| Sister N. Gumede | Sister-in-charge, Edendale | Business rules confirmed | 24 November 2026 |
| Information officer | uMgungundlovu District Health | Data and hosting approach accepted | 24 November 2026 |
