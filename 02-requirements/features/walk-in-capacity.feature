Feature: Protect capacity for walk-ins and emergencies
  As a sister-in-charge
  I want at least 30% of daily capacity kept for walk-ins
  So that patients who are sick today are still seen

  Scenario Outline: Setting the walk-in share
    Given I am signed in as the sister-in-charge for "Scottsville"
    When I set the walk-in share for "General consultation" to <percent> percent
    Then the change is <result>

    Examples:
      | percent | result                                                 |
      | 25      | refused with the message "Walk-in share must be at least 30%" |
      | 30      | saved                                                  |
      | 45      | saved                                                  |

  Scenario: Walk-in capacity is used up
    Given walk-in capacity at "Scottsville" for today is used up
    And a patient without a booking arrives with a non-urgent need
    When the clerk records the patient
    Then the patient is offered the next free bookable slot
    And the patient is recorded as "Turned away" with the reason "Walk-in capacity full"
