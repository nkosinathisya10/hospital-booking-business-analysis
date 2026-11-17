# 10 · Gate Review: Ready for UX/UI Design?

| Document ID | Version | Date | Author | Status |
|---|---|---|---|---|
| MCC-BA-19 | 1.0 | 1 December 2026 | Nkosinathi Ndlovu, Business Analyst | ✅ Approved with conditions |

---

## 1. Purpose

This gate checks that the business analysis is complete and good enough for the design and delivery team to start. It protects the clinic from designing or building the wrong thing.

## 2. Gate criteria

| # | Criterion | Evidence | Result |
|:---:|---|---|:---:|
| 1 | The problem is understood and backed by evidence | [Phase 1](../01-discovery/08-problem-statement.md): findings F-01 to F-12, root causes RC-01 to RC-05 | ✅ Pass |
| 2 | Business objectives have baselines and targets | [Project brief](../01-discovery/01-project-brief.md) BO-01 to BO-05 | ✅ Pass |
| 3 | The future-state process is agreed | [Future-state process](01-future-state-process.md) | ✅ Pass |
| 4 | Business requirements and rules are approved | [BRD](02-business-requirements.md), signed 24 Nov 2026 | ✅ Pass |
| 5 | Functional and non-functional requirements are clear and testable | [Requirements](03-functional-and-non-functional-requirements.md): 27 FR, 10 NFR | ✅ Pass |
| 6 | Requirements are prioritised | MoSCoW: 19 Must, 4 Should, 3 Could, 1 Won't | ✅ Pass |
| 7 | Main use cases and user stories have acceptance criteria | [Use cases](04-use-cases.md), [user stories](05-user-stories.md), [Gherkin features](features) | ✅ Pass |
| 8 | Data needs and privacy classification are defined | [Data model](06-data-model.md) | ✅ Pass |
| 9 | Every Must and Should requirement is traced to an objective and a test | [Traceability matrix](08-traceability-matrix.md) | ✅ Pass |
| 10 | Acceptance testing approach is agreed | [UAT plan](09-uat-plan.md) | ✅ Pass |
| 11 | Major risks have owners and responses | [RAID log](07-raid-log.md) | ✅ Pass |
| 12 | Legal and privacy review completed | POPIA officer reviewed D-04, D-06 and the data model | ⚠️ Partial: full POPIA impact assessment due before build ends |

## 3. Conditions

1. A POPIA personal information impact assessment must be completed and signed before go-live (owner: POPIA officer).
2. The SMS provider contract (DEP-01) must be signed before the build phase starts.
3. Assumption A-01 must be tested in a 4-week pilot at the Edendale branch before rollout to Scottsville and Imbali.

## 4. Decision

| Name | Role | Decision | Date |
|---|---|---|---|
| Zanele Mthethwa | Clinic Operations Manager (Sponsor) | ✅ **Approved to proceed to UX/UI design**, with the 3 conditions above | 1 December 2026 |
| Sister N. Gumede | Sister-in-charge, Edendale | Agreed | 1 December 2026 |
| District information officer | uMgungundlovu District Health | Agreed | 1 December 2026 |

## 5. Handover to UX/UI

The design team receives:

- The personas and findings from [Phase 1](../01-discovery/05-elicitation-findings.md)
- The prioritised backlog ([product-backlog.csv](data/product-backlog.csv), ready to import into Jira)
- Use cases UC-01 to UC-04 as the main screen flows
- Accessibility requirement NFR-01 (WCAG 2.2 AA) as a non-negotiable design constraint
