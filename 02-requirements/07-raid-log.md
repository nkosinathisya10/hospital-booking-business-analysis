# 07 · RAID Log (Risks, Assumptions, Issues, Decisions)

| Document ID | Version | Date | Author | Status |
|---|---|---|---|---|
| MCC-BA-16 | 1.0 | 27 November 2026 | Nkosinathi Ndlovu, Business Analyst | Live document |

---

## Risks

Score = Likelihood × Impact (1 low to 3 high). 🔴 6 to 9 · 🟠 3 to 4 · 🟢 1 to 2

| ID | Risk | L | I | Score | Response | Owner | Status |
|---|---|:---:|:---:|:---:|---|---|---|
| R-01 | Patients do not keep booked times | 2 | 3 | 🔴 6 | Day-before reminder (FR-10); slot release after 30 min (BRL-02); measure in pilot | BA | Open |
| R-02 | Staff resist the new process | 2 | 3 | 🔴 6 | Sisters-in-charge co-own capacity rules; train with real scenarios; pilot at one branch first | Sponsor | Open |
| R-03 | Unstable internet at a branch | 2 | 2 | 🟠 4 | Offline check-in with automatic sync (NFR-08) | District IT | Mitigated |
| R-04 | Booking data is exposed | 1 | 3 | 🟠 3 | Encryption, MFA, role-based access, audit log; POPIA impact assessment before go-live | POPIA officer | Open |
| R-05 | Walk-ins feel pushed aside | 2 | 2 | 🟠 4 | 30% walk-in protection (BRL-01); posters explaining the change; clinic committee briefing | Sponsor | Mitigated |
| R-06 | SMS provider not contracted in time | 2 | 2 | 🟠 4 | Start procurement now; booking still works without SMS | District IT | Open |
| R-07 | Online booking favours patients with smartphones and creates a two-tier system | 1 | 3 | 🟠 3 | Assisted booking at reception and by health workers (BR-06); monitor booking channel mix | BA | Open |

## Assumptions

| ID | Assumption | How it will be checked | Status |
|---|---|---|---|
| A-01 | Patients keep booked times when reminded | No-show rate in 4-week Edendale pilot below 15% | ⚠️ Open |
| A-02 | Reception has a computer and internet at all branches | Site check 18 Nov 2026 | ✅ Validated |
| A-03 | Patients can be identified by ID, passport or folder number | Workshop 20 Nov 2026 | ✅ Validated |
| A-04 | Sisters-in-charge can estimate realistic slot lengths per service | Compare with observed consultation times in pilot | ⚠️ Open |

## Issues

| ID | Issue | Impact | Action | Owner | Status |
|---|---|---|---|---|---|
| I-01 | Folder numbers have no common format across the three branches | Patient matching may fail | Add branch prefix in the system (EDN-, IMB-, SCV-) | Reception lead | Resolved |
| I-02 | No isiZulu translation budget | NFR-07 at risk | Clinic committee volunteers to review translations | Sponsor | In progress |

## Decisions

Decisions D-01 to D-06 answer the open questions Q-01 to Q-06 from [Phase 1](../01-discovery/08-problem-statement.md).

| ID | Question | Decision | Decided by | Date |
|---|---|---|---|---|
| D-01 | Q-01 How should capacity be split? | Each sister-in-charge sets capacity per service and day, with at least 30% kept for walk-ins. Bookings open 14 days ahead. | Sponsor and sisters-in-charge | 20 Nov 2026 |
| D-02 | Q-02 How are patients identified? | SA ID, passport or asylum number, **or** folder number. Patients without any can be booked at reception. | Sponsor, district officer | 20 Nov 2026 |
| D-03 | Q-03 Where is the system hosted? | A cloud region located in South Africa, approved by the district, with daily encrypted backups. | District information officer | 21 Nov 2026 |
| D-04 | Q-04 What may an SMS say? | Clinic, branch, date, time and booking reference only. No service or condition. | POPIA officer | 21 Nov 2026 |
| D-05 | Q-05 When are unclaimed slots released? | 30 minutes after the slot start time. | Sisters-in-charge | 20 Nov 2026 |
| D-06 | Q-06 Can others book on a patient's behalf? | Yes, caregivers and health workers, with the patient's consent recorded; up to 5 dependants per account. | Sponsor, POPIA officer | 21 Nov 2026 |
| D-07 | Should WhatsApp be in the first release? | No. Planned for a later release once the booking engine is proven. | Sponsor | 24 Nov 2026 |
