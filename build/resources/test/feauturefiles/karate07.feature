Feature: Karate Test Suite 6
  Validating Data Types of a Variable

  Scenario: Data Type Validation Test Case
    * def a = 10
    * def b = "Karate"
    * def c = true

    * match  a == "#number"
    * match  b == "#string"
    * match  c == "#boolean"