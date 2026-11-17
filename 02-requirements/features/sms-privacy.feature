Feature: Confidential SMS messages
  As a patient
  I want SMS messages that do not reveal why I am visiting
  So that my health information stays private

  Scenario Outline: Every SMS type follows the content rule
    Given a patient has a booking for "<service>"
    When the system sends a "<message_type>" SMS
    Then the message contains the clinic name, branch, date, time and booking reference
    And the message does not contain the word "<service>"

    Examples:
      | service             | message_type |
      | Antenatal care      | Confirmation |
      | HIV testing         | Reminder     |
      | Chronic medication  | Change       |
      | Family planning     | Cancellation |

  Scenario: Reminder is sent the day before
    Given a patient has a booking tomorrow at 08:30
    When the time reaches 15:00 today
    Then a reminder SMS is sent to the patient's mobile number
