Feature: Karate Test Suite 6
  Using Logical Operator && in Validation

  Scenario: Karate Logical Operator Validation
    * def a = 10
    * def b = 20
    * assert a == 10 && b == 20
    * print "after assert"