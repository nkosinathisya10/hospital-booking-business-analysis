Feature: Book a clinic visit online
  As a patient
  I want to book a time slot for the service I need
  So that I know I will be seen without queueing from dawn

  Background:
    Given I am signed in as a patient
    And the "Edendale" branch offers "Antenatal care" on Tuesdays and Wednesdays from 08:00 to 12:00

  Scenario: Book an open slot
    Given the 09:00 slot on Tuesday 8 December 2026 has space
    When I book "Antenatal care" at "Edendale" for Tuesday 8 December 2026 at 09:00
    Then I see a booking reference
    And the booking status is "Booked"
    And I receive a confirmation SMS within 1 minute

  Scenario: Service is not offered on the chosen day
    When I choose "Antenatal care" at "Edendale" for Thursday 10 December 2026
    Then the date cannot be selected
    And I see the message "Antenatal care runs on Tuesdays and Wednesdays at this branch"

  Scenario: Slot is full
    Given the 10:00 slot on Wednesday 9 December 2026 is full
    When I view slots for Wednesday 9 December 2026
    Then the 10:00 slot shows the word "Full"
    And the 10:00 slot cannot be selected

  Scenario: Only one booking per service per day
    Given I have a booking for "Antenatal care" on Tuesday 8 December 2026 at 09:00
    When I try to book "Antenatal care" on Tuesday 8 December 2026 at 11:00
    Then I see my existing booking
    And no new booking is created

  Scenario Outline: Booking window
    When I try to book a slot that starts in <time_until_slot>
    Then the booking is <result>

    Examples:
      | time_until_slot | result  |
      | 15 days         | refused |
      | 14 days         | allowed |
      | 3 hours         | allowed |
      | 1 hour          | refused |
