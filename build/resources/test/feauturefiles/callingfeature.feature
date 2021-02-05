Feature: Calling Feature Test Suite
  Calling Feature

  @rest
  Scenario: Calling Feature Test Case 1
    * def result = call read("calledfeature.feature")
    * print result
    * print result.response.string._ == "104"


