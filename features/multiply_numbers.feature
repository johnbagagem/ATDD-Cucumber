@multiply
Feature: Multiply numbers

Scenario: Multiply two integer numbers
  Given multiplication string "2*2"
  When I run calculator script
  Then I should receive "4"

Scenario: Multiply two integer numbers
  Given multiplication string "3*4"
  When I run calculator script
  Then I should receive "12"

Scenario Outline: Multiply any two integer numbers
  Given multiplication string "<numbers>"
  When I run calculator script
  Then I should receive "<result>"

  Examples:
  |numbers|result|
  | 3*4   | 12 |
  | 2*2   | 4 |
  | 1*8   | 8 |
  | 1*5   | 5 |
  | 4*2   | 8 |
  | 0*5   | 0 |
