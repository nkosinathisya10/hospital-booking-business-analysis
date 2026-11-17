# 01 · Future-State Process (To-Be)

| Document ID | Version | Date | Author | Status |
|---|---|---|---|---|
| MCC-BA-10 | 1.0 | 20 November 2026 | Nkosinathi Ndlovu, Business Analyst | Approved |

---

## 1. What changes

| | Today (as-is) | Future (to-be) |
|---|---|---|
| **How a patient gets a place** | Queue at the gate for a numbered card | Book a time slot online, at reception, or through a community health worker |
| **When the clinic knows demand** | When people are already at the gate | Up to 14 days ahead |
| **Folders** | Searched for at the counter while the patient waits | Pulled the afternoon before from the expected-patient list |
| **Reminders** | None; next date handwritten on a card | SMS confirmation and a reminder the day before |
| **Missed visits** | Slot is lost | Released to walk-ins 30 minutes after the slot start |
| **Walk-ins and emergencies** | Compete for the same cards | At least 30% of capacity protected for them |
| **Management data** | Head count only | Daily bookings, arrivals, no-shows, walk-ins and turned away |

## 2. BPMN 2.0 model

Tasks in **amber** are new or changed. Tasks in **teal** stay the same. The model file is [to-be-booked-visit.bpmn](models/to-be-booked-visit.bpmn) (open in [bpmn.io](https://demo.bpmn.io) or Camunda Modeler).

<p align="center"><img src="models/to-be-booked-visit.svg" alt="BPMN 2.0 model of the future booked clinic visit, with lanes for patient, booking portal, reception clerk and nurse" width="100%"></p>

## 3. Walk-in and slot release flow

Booking does not replace walk-ins. This flow shows how the two work together on the day.

```mermaid
%%{init: {'theme':'base','themeVariables':{'primaryColor':'#D5F0EC','primaryBorderColor':'#0F766E','primaryTextColor':'#0B3C5D','lineColor':'#0B3C5D','fontFamily':'Segoe UI, Arial'}}}%%
flowchart TD
    A(("Patient arrives")):::start --> B{"Has a booking?"}:::gate
    B -->|Yes| C["Check in at reception"]:::new
    C --> D["Join nurse queue at booked time"]:::task
    B -->|No| E{"Walk-in capacity<br/>left today?"}:::gate
    E -->|Yes| F["Register as walk-in"]:::new --> G["Join walk-in queue"]:::task
    E -->|No| H{"Urgent or<br/>emergency?"}:::gate
    H -->|Yes| I["Seen by nurse<br/>as priority"]:::task
    H -->|No| J["Book the next free slot<br/>and record as turned away"]:::new
    K(["⏱ Slot start + 30 min,<br/>patient not checked in"]):::timer --> L["Mark no-show and add slot<br/>to walk-in capacity"]:::new --> E

    classDef task fill:#D5F0EC,stroke:#0F766E,color:#0B3C5D
    classDef new fill:#FDF1DC,stroke:#B7791F,color:#0B3C5D,stroke-width:2px
    classDef gate fill:#FFFFFF,stroke:#0B3C5D,color:#0B3C5D,stroke-width:2px
    classDef start fill:#0F766E,stroke:#0B3C5D,color:#FFFFFF
    classDef timer fill:#FFFFFF,stroke:#B7791F,color:#B7791F,stroke-width:2px
```

## 4. How the future state addresses each pain point

| Pain point | Root cause | How the future state fixes it |
|---|---|---|
| PP-01 Travel before sunrise | RC-01 | Patients arrive at their booked time |
| PP-02 Queue outside the gate | RC-01 | No need to queue for a card; walk-ins are registered at reception |
| PP-03 Patients turned away | RC-01, RC-03 | Capacity is planned ahead; turned-away patients leave with a booked slot |
| PP-04 Folder search at the counter | RC-02 | Folders are pulled the afternoon before |
| PP-05 Long wait in the waiting area | RC-01, RC-04 | Arrivals are spread across the day by time slot |
| PP-06 Temporary folders | RC-02 | Missing folders are found or flagged a day early |
| PP-07 Lost next-visit dates | RC-05 | Follow-ups are booked in the system with SMS reminders |
| PP-08 Fixed card limit | RC-03 | Capacity is set per service and per day by the sister-in-charge |
