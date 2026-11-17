# 09 · User Acceptance Testing (UAT) Plan

| Document ID | Version | Date | Author | Status |
|---|---|---|---|---|
| MCC-BA-18 | 1.0 | 27 November 2026 | Nkosinathi Ndlovu, Business Analyst | Approved |

---

## 1. Purpose

User acceptance testing confirms that the finished booking portal does what patients and staff need, before it goes live at the three branches. It is done by real users, not by the developers.

## 2. Scope

All **Must** and **Should** requirements in this release (FR-01 to FR-24 and NFR-01 to NFR-10). Could and Won't items are out of scope.

## 3. Entry and exit criteria

| Entry criteria (before UAT starts) | Exit criteria (before go-live) |
|---|---|
| All Must stories pass system testing | 100% of Must test cases passed |
| Test environment loaded with realistic but fake patient data | At least 90% of Should test cases passed |
| Testers trained and test scripts signed off | No open Critical or High defects |
| Accessibility audit completed | Accessibility test (UAT-19) passed with screen reader users |
| | Sponsor signs the UAT completion report |

## 4. Testers

| Group | Who | Number |
|---|---|:---:|
| Patients | Mix of ages, including 2 older patients and 2 screen reader or low-vision users | 10 |
| Reception clerks | One from each branch | 3 |
| Nurses | Including one sister-in-charge | 3 |
| Managers | Operations manager | 1 |

## 5. Test cases

| Test | Scenario | Expected result | Requirements | Tester |
|---|---|---|---|---|
| **UAT-01** | Register and link identity | OTP received within 60 s; ID or folder number saved | FR-01, FR-02 | Patients |
| **UAT-02** | View service calendar without login | Services, days and hours shown; holidays marked closed | FR-03 | Patients |
| **UAT-03** | Book an open slot | Confirmation with reference shown; slot count drops by one | FR-04, FR-05 | Patients |
| **UAT-04** | Cancel and reschedule | Slot released; SMS sent; cancel blocked inside 2 hours | FR-06 | Patients |
| **UAT-05** | Booking rules | Wrong-day, double booking and beyond-14-day attempts are blocked with clear messages | FR-07 | Patients |
| **UAT-06** | Book for a dependant | Consent recorded; limit of 5 enforced | FR-08 | Patients |
| **UAT-07** | SMS confirmation and reminder | Confirmation within 1 min; reminder at 15:00; no service or condition in text | FR-09, FR-10, FR-11 | Patients |
| **UAT-08** | Cancel by SMS reply | Reply CANCEL cancels booking and sends confirmation | FR-12 | Patients |
| **UAT-09** | Assisted booking at reception | Clerk finds or creates patient and books using the same rules | FR-13 | Clerks |
| **UAT-10** | Expected-patient list | List ready by 15:00, sorted by time, prints on A4 | FR-14 | Clerks |
| **UAT-11** | Check in, online and offline | Arrival time stored; offline check-ins sync after reconnecting | FR-15, NFR-08 | Clerks |
| **UAT-12** | Automatic slot release | No-show marked and slot added to walk-in capacity at slot start + 30 min | FR-16 | Nurses |
| **UAT-13** | Walk-ins and turned away | Walk-ins queued until capacity used; turned-away entries recorded | FR-17, FR-18 | Clerks |
| **UAT-14** | Nurse books follow-up | Follow-up saved and SMS sent | FR-19 | Nurses |
| **UAT-15** | Capacity settings | Walk-in share below 30% rejected; only future dates change | FR-20 | Nurses |
| **UAT-16** | Branch closure | Affected patients receive rebooking SMS | FR-21 | Nurses |
| **UAT-17** | Roles, MFA and audit log | Clerk cannot see admin screens; MFA required; views logged | FR-22, NFR-04, NFR-05 | Administrator |
| **UAT-18** | Dashboard and export | Figures match test data; CSV has one row per branch per day | FR-23, FR-24 | Managers |
| **UAT-19** | Accessibility | No WCAG 2.2 AA failures; booking completed with NVDA and TalkBack | NFR-01 | Patients |
| **UAT-20** | Performance and devices | Pages load under 3 s on throttled 3G; usable at 320 px | NFR-02, NFR-03, NFR-09 | Test team |
| **UAT-21** | isiZulu language | All patient screens and SMS available in isiZulu | NFR-07 | Patients |
| **UAT-22** | First-time booking usability | At least 8 of 10 testers book in under 3 minutes | NFR-10 | Patients |

## 6. Defect severity

| Severity | Meaning | Example | Go-live? |
|---|---|---|:---:|
| 🔴 Critical | A core task cannot be done, or patient data is exposed | Booking cannot be confirmed; SMS shows a diagnosis | ❌ Blocks |
| 🟠 High | A core task is very hard, with no workaround | Screen reader cannot reach the Confirm button | ❌ Blocks |
| 🟡 Medium | A task works but has a problem with a workaround | Printed list cuts off the last column | ⚠️ Fix plan needed |
| ⚪ Low | Cosmetic issue | Spacing or spelling error | ✅ Allowed |

## 7. Schedule

UAT runs for **two weeks** after system testing, with one day at each branch for staff testing and one usability session with patients at the Edendale branch.
