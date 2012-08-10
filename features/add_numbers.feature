Feature: Add numbers

Scenario: Add two integer numbers
  Given addition string "2+2"
  When I run calculator script
  Then I should receive "4"

Scenario: Add two integer numbers
  Given addition string "3+4"
  When I run calculator script
  Then I should receive "7"

Scenario Outline: Add any two integer numbers
  Given addition string "<numbers>"
  When I run calculator script
  Then I should receive "<sum>"

  Examples:
  |numbers|sum|
  | 3+4   | 7 |
  | 2+2   | 4 |
  | 1+8   | 9 |
  | 1+5   | 6 |
  | 4+2   | 6 |
  | 0+5   | 5 |
