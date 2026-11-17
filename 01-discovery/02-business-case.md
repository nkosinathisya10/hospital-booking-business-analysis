# 02 · Business Case

| Document ID | Version | Date | Author | Status |
|---|---|---|---|---|
| MCC-BA-02 | 1.0 | 14 November 2026 | Nkosinathi Ndlovu, Business Analyst | Approved |

---

## 1. The business need

Midlands Community Clinic sees about 300 patients a day across its three branches, but every visit starts the same way: a queue at the gate and a first-come, first-served card system. The clinic only finds out how many people need care when they are already standing outside.

Phase 1 research found that:

- **64%** of surveyed patients arrive before 07:00, when the gate opens.
- The average wait from arrival to consultation is **4 hours 12 minutes**.
- About **40 patients a day** are turned away across the three branches.
- **22%** of follow-up visits are missed, which wastes capacity that others could have used.
- **7.5%** of paper folders cannot be found on the day, which adds more delay.

Details and evidence are in [05 · Elicitation findings](05-elicitation-findings.md).

## 2. Options considered

| Option | Description |
|---|---|
| **O0: Do nothing** | Keep the walk-in and numbered-card system as it is. |
| **O1: Phone booking line** | Patients call a central number and a clerk books a time for them. |
| **O2: SMS / USSD booking** | Patients book by dialling a short code or replying to SMS menus. Works on any phone. |
| **O3: Accessible web portal with SMS and assisted booking** | A mobile-first booking website, SMS confirmations and reminders, and a staff screen so reception can book for people without a smartphone. |
| **O4: WhatsApp booking assistant** | Patients book through a guided WhatsApp chat using the WhatsApp Business Platform. |

## 3. Evaluation criteria

| Criterion | Weight | Why it matters |
|---|---|---|
| Patient reach | 25% | How many patients, including those without smartphones, can use it |
| Accessibility | 20% | Usable by older people and people with visual, hearing or motor impairments |
| Reduction in staff effort | 20% | Frees clerks and marshals from queue and folder work |
| Cost (lower is better) | 15% | Build plus three years of running costs |
| Data and reporting | 10% | Gives managers daily demand and no-show data |
| Time to deliver | 10% | How quickly patients feel the benefit |

## 4. Weighted scoring

Scores run from **1 (poor)** to **5 (excellent)**. Weighted score = sum of (score × weight).

| Criterion (weight) | O0 Do nothing | O1 Phone line | O2 SMS / USSD | **O3 Web portal + SMS + assisted** | O4 WhatsApp |
|---|:---:|:---:|:---:|:---:|:---:|
| Patient reach (25%) | 1 | 3 | 4 | **5** | 4 |
| Accessibility (20%) | 1 | 3 | 3 | **5** | 3 |
| Reduction in staff effort (20%) | 1 | 1 | 3 | **4** | 4 |
| Cost (15%) | 5 | 3 | 4 | **3** | 2 |
| Data and reporting (10%) | 1 | 2 | 3 | **5** | 4 |
| Time to deliver (10%) | 5 | 4 | 3 | **3** | 2 |
| **Weighted score (out of 5)** | **2.00** | **2.60** | **3.40** | **4.30** | **3.30** |


**Why O3 scores highest**

- **Reach:** 71% of surveyed patients have a phone that can browse the internet. The other 29% are covered by SMS reminders and booking at reception.
- **Accessibility:** a website can be built to WCAG 2.2 AA and tested with screen readers. Chat-based and USSD menus are hard to use with assistive technology and time out quickly.
- **Data:** every booking, arrival and no-show is captured, which gives managers real demand figures for the first time.

**Why not WhatsApp first?** WhatsApp was the most popular channel in the survey (46%). However, the Business Platform charges per conversation, needs Meta approval and is harder to make fully accessible. It is recommended as **Phase 2 of the product**, built on top of the same booking engine.

## 5. Estimated costs (rough order of magnitude, ±50%)

| Cost item | Once-off | Per year |
|---|---:|---:|
| UX/UI design and usability testing | R 85 000 | |
| Build and testing of portal and staff screens | R 320 000 | |
| Cloud hosting, database and backups | | R 36 000 |
| SMS messages (about 6 000 per month at R0.35) | | R 25 200 |
| Support and maintenance | | R 60 000 |
| Staff training (3 branches) | R 15 000 | |
| **Total** | **R 420 000** | **R 121 200** |

Estimated three-year cost of ownership: **R 783 600**.

## 6. Expected benefits

| Benefit | Measure | Estimate |
|---|---|---|
| Patients spend less time waiting | Hours saved per day across 3 branches | About 120 booked patients × 2.5 hours = **300 patient hours a day** |
| Fewer wasted trips | Patients turned away | From about 40 to under 8 per day |
| Better use of nurse time | Missed follow-ups filled by other patients | About 15 more patients seen per day |
| Less admin | Folder searches done the day before, not at the counter | About 2.5 clerk hours saved per branch per day |
| Better planning | Demand data available daily | Managers can plan staff by service day |
| Fairer access | Screen-reader and low-vision users can book alone | Meets WCAG 2.2 AA |

## 7. Key risks

| ID | Risk | Likelihood | Impact | Response |
|---|---|:---:|:---:|---|
| R-01 | Patients do not keep booked times | Medium | High | Reminder SMS the day before; release unclaimed slots at 09:00 |
| R-02 | Staff resist a new way of working | Medium | High | Involve sisters-in-charge in design; train on real cases |
| R-03 | Unstable internet at a branch | Medium | Medium | Staff screen keeps working offline and syncs later |
| R-04 | Booking data is exposed | Low | High | POPIA impact assessment; role-based access; encryption |
| R-05 | Walk-in patients feel pushed aside | Medium | Medium | Keep a fixed share of daily capacity for walk-ins |

## 8. Recommendation

Proceed with **Option 3: an accessible web booking portal with SMS reminders and assisted booking at reception**, starting with the requirements phase. Plan a WhatsApp channel as a later release once the booking engine is proven.

| Name | Role | Decision | Date |
|---|---|---|---|
| Zanele Mthethwa | Clinic Operations Manager (Sponsor) | Option 3 approved for requirements phase | 14 November 2026 |
