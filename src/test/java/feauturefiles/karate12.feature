Feature: Karate Test Suite 11
  End to End REST API Testing (API Chaining)

  @ddt
  Scenario Outline: DDT Test Case 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<temp>"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print responseTime
    * match response contains "<result>"

    Examples:
      |temp|result|
      |37  |98.6  |
      |40  |104   |

  @ddt
  Scenario Outline: DDT Test Case 2
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<temp>"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print responseTime
    * match response contains "<result>"

    Examples:
      |read("classpath:data.csv")|

