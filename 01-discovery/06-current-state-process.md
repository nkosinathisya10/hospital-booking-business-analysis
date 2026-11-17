# 06 · Current-State Process (As-Is)

| Document ID | Version | Date | Author | Status |
|---|---|---|---|---|
| MCC-BA-06 | 1.0 | 13 November 2026 | Nkosinathi Ndlovu, Business Analyst | Approved (validated in staff workshop) |

---

## 1. Process overview

| | |
|---|---|
| **Process name** | Patient clinic visit (walk-in) |
| **Trigger** | A patient needs care, a check-up or chronic medication |
| **End states** | Patient is seen and leaves with a next-visit date **or** patient is turned away |
| **Participants** | Patient, queue marshal, reception clerk, nurse |
| **Frequency** | About 340 arrivals a day across 3 branches (300 seen, about 40 turned away) |
| **Formal model** | [as-is-clinic-visit.bpmn](models/as-is-clinic-visit.bpmn) (BPMN 2.0, open in [bpmn.io](https://demo.bpmn.io) or Camunda Modeler) |

## 2. BPMN 2.0 model

This is the formal model, drawn in BPMN 2.0 with one lane per role. Tasks in **coral** are pain points.

<p align="center"><img src="models/as-is-clinic-visit.svg" alt="BPMN 2.0 model of the current clinic visit process with lanes for patient, queue marshal, reception clerk and nurse" width="100%"></p>

## 3. Annotated process map

The same process, with each pain point numbered so it can be traced to the table in section 4.

```mermaid
%%{init: {'theme':'base','themeVariables':{'primaryColor':'#D5F0EC','primaryBorderColor':'#0F766E','primaryTextColor':'#0B3C5D','lineColor':'#0B3C5D','fontFamily':'Segoe UI, Arial'}}}%%
flowchart TD
    S(("👤 Patient needs<br/>a clinic visit")):::start
    T1["👤 Travel to clinic before sunrise<br/><b>PP-01</b>"]:::pain
    T2["👤 Queue outside the gate<br/><b>PP-02</b>"]:::pain
    T3["🛡️ Marshal opens gate and<br/>hands out numbered cards"]:::task
    G1{"Daily card<br/>limit reached?"}:::gate
    T4["🛡️ Tell patient to come back<br/>another day <b>PP-03</b>"]:::pain
    E1(("Patient<br/>turned away")):::stop
    T5["🗂️ Clerk searches for<br/>paper folder <b>PP-04</b>"]:::pain
    G2{"Folder<br/>found?"}:::gate
    T6["🗂️ Open temporary folder<br/><b>PP-06</b>"]:::pain
    T7["🗂️ Add patient to nurse queue"]:::task
    T8["👤 Wait in the waiting area<br/><b>PP-05</b>"]:::pain
    T9["🩺 Nurse checks vitals and triages"]:::task
    T10["🩺 Consult and treat"]:::task
    T11["🩺 Write next-visit date on<br/>clinic card <b>PP-07</b>"]:::pain
    E2(("Patient leaves with<br/>next-visit date")):::finish

    S --> T1 --> T2 --> T3 --> G1
    G1 -->|Yes| T4 --> E1
    G1 -->|No| T5 --> G2
    G2 -->|No| T6 --> T7
    G2 -->|Yes| T7
    T7 --> T8 --> T9 --> T10 --> T11 --> E2

    classDef task fill:#D5F0EC,stroke:#0F766E,color:#0B3C5D,stroke-width:1.5px
    classDef pain fill:#FDE8DD,stroke:#C2410C,color:#7C2D12,stroke-width:2px
    classDef gate fill:#FFFFFF,stroke:#0B3C5D,color:#0B3C5D,stroke-width:2px
    classDef start fill:#0F766E,stroke:#0B3C5D,color:#FFFFFF
    classDef finish fill:#0B3C5D,stroke:#0B3C5D,color:#FFFFFF
    classDef stop fill:#C2410C,stroke:#7C2D12,color:#FFFFFF
```

Role key: 👤 Patient · 🛡️ Queue marshal · 🗂️ Reception clerk · 🩺 Nurse

## 4. Pain points

| ID | Step | Pain point | Who it hurts | Evidence |
|---|---|---|---|---|
| PP-01 | Travel to clinic | Patients leave home as early as 04:30 and travel in the dark | Patients, especially older people and mothers | F-01 |
| PP-02 | Queue outside the gate | Hours of standing with no shelter or seating | Patients | F-01, observation 05:20–07:00 |
| PP-03 | Turn patient away | About 40 people a day leave without care and must pay to return | Patients, marshals | F-03 |
| PP-04 | Search for folder | 4 to 9 minutes per folder at the counter during the busiest hours | Clerks, patients | F-06 |
| PP-05 | Wait in waiting area | Average total wait of 4 h 12 min; waiting area overflows | Patients, nurses | F-02 |
| PP-06 | Temporary folder | Nurse consults without the patient's history | Nurses, patients | F-06 |
| PP-07 | Next-visit date on card | Handwritten dates are lost or unreadable; no reminder; 22% missed | Patients, nurses | F-07, P09 |
| PP-08 | (Across the whole process) | Capacity is a fixed card count, not linked to services offered that day | Sisters-in-charge, patients | F-04, F-05 |

## 5. Current-state measures

| Measure | Value | Source |
|---|---|---|
| Patients seen per day (3 branches) | About 300 | Attendance registers |
| Patients turned away per day | About 40 | Card logs |
| Average arrival-to-consultation time | 4 h 12 min | Observation (30 patients) |
| Average folder search time | 6 min | Observation |
| Folders not found | 7.5% | Observation |
| Missed follow-up visits | 22% | Appointment book, September 2026 |
| Visits booked in advance | 0% | Walk-in only |
