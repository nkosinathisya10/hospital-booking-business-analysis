# 05 · User Stories and Acceptance Criteria

| Document ID | Version | Date | Author | Status |
|---|---|---|---|---|
| MCC-BA-14 | 1.0 | 27 November 2026 | Nkosinathi Ndlovu, Business Analyst | Approved |

---

Stories follow the format **As a … I want … so that …**, with acceptance criteria written as **Given / When / Then**. Story points use the Fibonacci scale (1, 2, 3, 5, 8). The same backlog is available as a CSV that can be imported straight into Jira: [product-backlog.csv](data/product-backlog.csv). Executable versions of key criteria are in the [features](features) folder.

## Backlog overview

| Epic | Stories | Story points |
|---|:---:|:---:|
| **E1** Patient booking | 5 | 26 |
| **E2** Notifications | 2 | 6 |
| **E3** Front desk and clinic day | 6 | 26 |
| **E4** Clinic set-up | 3 | 13 |
| **E5** Reporting | 2 | 7 |
| **Total** | **18** | **78** |

## E1 · Patient booking

### US-01 · Register with my cellphone number

> **As a** patient, **I want to** register with my cellphone number, **so that** I can book clinic visits.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 5 | FR-01, FR-02 |

**Acceptance criteria**

1. **Given** I enter a valid South African cellphone number, **when** I ask for a PIN, **then** I receive a one-time PIN by SMS within 60 seconds.
2. **Given** I enter the wrong PIN 3 times, **when** I try again, **then** my sign-in is paused for 15 minutes.
3. **Given** I am signed in, **when** I add my ID, passport or folder number, **then** it is saved to my profile.

### US-02 · See which services run on which days at my branch

> **As a** patient, **I want to** see which services run on which days at my branch, **so that** I do not travel on a day my service is not offered.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 3 | FR-03 |

**Acceptance criteria**

1. **Given** I am not signed in, **when** I open a branch page, **then** I see each service with its days and hours.
2. **Given** a branch is closed on a public holiday, **when** I view that week, **then** the day is clearly marked as closed.

### US-03 · Book a time slot for the service I need

> **As a** patient, **I want to** book a time slot for the service I need, **so that** I know I will be seen without queueing from dawn.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 8 | FR-04, FR-05, FR-07 |

**Acceptance criteria**

1. **Given** a service runs on Tuesdays only, **when** I choose a Thursday, **then** the date cannot be selected and the reason is shown.
2. **Given** a slot is full, **when** I view the slot list, **then** it shows the word Full and cannot be selected.
3. **Given** I choose an open slot, **when** I confirm, **then** I see a booking reference, branch, date and time.
4. **Given** I already have a booking for this service on this day, **when** I try to book again, **then** I am told I already have a booking.

### US-04 · Change or cancel my booking

> **As a** patient, **I want to** change or cancel my booking, **so that** someone else can use the slot if I cannot come.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 5 | FR-06 |

**Acceptance criteria**

1. **Given** my slot is more than 2 hours away, **when** I cancel, **then** the slot is released and I receive an SMS.
2. **Given** my slot is less than 2 hours away, **when** I try to cancel, **then** I am asked to call the clinic.

### US-05 · Book visits for my child or elderly parent

> **As a** caregiver, **I want to** book visits for my child or elderly parent, **so that** I can manage my family's clinic visits from one phone.

| Priority | Points | Requirements |
|---|:---:|---|
| 🔵 Should | 5 | FR-08 |

**Acceptance criteria**

1. **Given** I add a dependant, **when** I save, **then** I must confirm their consent and the date is recorded.
2. **Given** I have 5 dependants, **when** I try to add another, **then** I am told the limit is 5.

## E2 · Notifications

### US-06 · Get an SMS confirmation and a reminder

> **As a** patient, **I want to** get an SMS confirmation and a reminder, **so that** I do not forget my visit.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 3 | FR-09, FR-10, FR-11 |

**Acceptance criteria**

1. **Given** I book a visit, **when** the booking is saved, **then** I receive a confirmation SMS within 1 minute.
2. **Given** I have a visit tomorrow, **when** it is 15:00 today, **then** I receive a reminder SMS.
3. **Given** any SMS is sent, **when** I read it, **then** it shows only clinic, branch, date, time and reference, and no service or condition.

### US-07 · Cancel by replying to the reminder SMS

> **As a** patient, **I want to** cancel by replying to the reminder SMS, **so that** I can cancel without data or a smartphone.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟡 Could | 3 | FR-12 |

**Acceptance criteria**

1. **Given** I receive a reminder, **when** I reply CANCEL, **then** the booking is cancelled and I get a confirmation SMS.

## E3 · Front desk and clinic day

### US-08 · Book a visit for a patient who has no smartphone

> **As a** reception clerk, **I want to** book a visit for a patient who has no smartphone, **so that** every patient can get a booked time.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 5 | FR-13 |

**Acceptance criteria**

1. **Given** a patient gives me their ID, phone or folder number, **when** I search, **then** I find their profile.
2. **Given** the patient has no profile, **when** I create one, **then** the same booking rules apply as online.

### US-09 · Print tomorrow's expected-patient list by 15:00

> **As a** reception clerk, **I want to** print tomorrow's expected-patient list by 15:00, **so that** I can pull folders before patients arrive.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 3 | FR-14 |

**Acceptance criteria**

1. **Given** it is 15:00, **when** I open the list, **then** it shows tomorrow's bookings sorted by time with folder numbers.
2. **Given** I press Print, **when** the list prints, **then** it fits on A4 pages.

### US-10 · Check in a patient when they arrive

> **As a** reception clerk, **I want to** check in a patient when they arrive, **so that** the nurse knows who is ready and wait times are measured.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 5 | FR-15 |

**Acceptance criteria**

1. **Given** a patient arrives, **when** I search their reference or phone number, **then** I can mark them as arrived and the time is saved.
2. **Given** the internet is down, **when** I check in patients, **then** check-ins are saved and synced when the connection returns.

### US-11 · Have unclaimed slots released after 30 minutes

> **As a** sister-in-charge, **I want to** have unclaimed slots released after 30 minutes, **so that** walk-in patients can use time that would be wasted.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 5 | FR-16 |

**Acceptance criteria**

1. **Given** a patient has not checked in, **when** 30 minutes pass after the slot start, **then** the booking is marked as a no-show and the slot is added to walk-in capacity.

### US-12 · Register walk-in patients and record anyone turned away

> **As a** reception clerk, **I want to** register walk-in patients and record anyone turned away, **so that** walk-ins are still seen and managers see real demand.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 5 | FR-17, FR-18 |

**Acceptance criteria**

1. **Given** walk-in capacity remains, **when** I register a walk-in, **then** they join the day's queue.
2. **Given** walk-in capacity is used up, **when** another patient arrives, **then** I record them as turned away with a reason.

### US-13 · Book the patient's follow-up visit before they leave

> **As a** nurse, **I want to** book the patient's follow-up visit before they leave, **so that** follow-ups are not forgotten.

| Priority | Points | Requirements |
|---|:---:|---|
| 🔵 Should | 3 | FR-19 |

**Acceptance criteria**

1. **Given** I finish a consultation, **when** I choose a follow-up date, **then** the booking is made and the patient receives an SMS.

## E4 · Clinic set-up

### US-14 · Set daily capacity and slot length for each service

> **As a** sister-in-charge, **I want to** set daily capacity and slot length for each service, **so that** bookings match the staff I actually have.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 5 | FR-20 |

**Acceptance criteria**

1. **Given** I set the walk-in share below 30%, **when** I save, **then** I see an error and the change is not saved.
2. **Given** I change capacity, **when** I save, **then** only future dates without bookings are affected.

### US-15 · Close a service or the branch on certain days

> **As a** sister-in-charge, **I want to** close a service or the branch on certain days, **so that** patients are not booked when we cannot see them.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 5 | FR-21 |

**Acceptance criteria**

1. **Given** there are bookings on a day I close, **when** I save the closure, **then** affected patients receive an SMS asking them to rebook.

### US-16 · Manage staff accounts and roles

> **As a** administrator, **I want to** manage staff accounts and roles, **so that** only the right people can see patient information.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 3 | FR-22 |

**Acceptance criteria**

1. **Given** a staff member leaves, **when** I deactivate their account, **then** they can no longer sign in.
2. **Given** a clerk signs in, **when** they open the menu, **then** they cannot see capacity settings or reports.

## E5 · Reporting

### US-17 · See a daily dashboard for each branch

> **As a** operations manager, **I want to** see a daily dashboard for each branch, **so that** I can plan staff and spot problems early.

| Priority | Points | Requirements |
|---|:---:|---|
| 🟢 Must | 5 | FR-23 |

**Acceptance criteria**

1. **Given** I open the dashboard, **when** I choose a branch and date, **then** I see bookings, arrivals, no-shows, walk-ins, turned away and average wait.
2. **Given** I use a screen reader, **when** I reach a chart, **then** the same figures are available as a table.

### US-18 · Export monthly figures as CSV

> **As a** operations manager, **I want to** export monthly figures as CSV, **so that** I can report to the district office.

| Priority | Points | Requirements |
|---|:---:|---|
| 🔵 Should | 2 | FR-24 |

**Acceptance criteria**

1. **Given** I choose a month, **when** I press Export, **then** a CSV file downloads with one row per branch per day.

