Feature: Release unclaimed slots to walk-ins
  As a sister-in-charge
  I want unclaimed slots released after 30 minutes
  So that walk-in patients can use time that would be wasted

  Background:
    Given a patient has a booking at "Imbali" today at 09:00
    And the patient has not checked in

  Scenario: Patient has not arrived 30 minutes after the slot start
    When the time reaches 09:30
    Then the booking status changes to "No-show"
    And walk-in capacity for today increases by 1

  Scenario: Patient arrives before the slot is released
    When the clerk checks the patient in at 09:25
    Then the booking status changes to "Checked in"
    And walk-in capacity for today does not change

  Scenario: Repeated no-shows lead to a phone call, not a block
    Given the patient has 2 no-shows in the last 90 days
    When the time reaches 09:30
    Then the patient appears on the reception call list
    And the patient can still make new bookings
