@division
Feature: Divide numbers

Scenario: Divide two integer numbers
  Given division string "2/2"
  When I run calculator script
  Then I should receive "1"

Scenario: Divide two integer numbers
  Given division string "3/1"
  When I run calculator script
  Then I should receive "3"

Scenario: Divide by zero
  Given division string "3/0"
  When I try to divide by 0
  Then the calculator script should fail
  And return "Bad Boy" as an output


