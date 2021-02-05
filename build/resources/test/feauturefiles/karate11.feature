Feature: Karate Test Suite 12
  Data Driven Testing

  @rest
  Scenario: REST API Test Case 1
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Syed","salary":"123","age":"23"}
    When method post
    Then status 200
    * print response
    * def id = response.data.id
    * print id


    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method get
    Then status 200
    * print response
    * assert response.message == "Succesfully! Record has been fetched"


    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And request {"name":"Syed","salary":"123","age":"30"}
    When method put
    Then status 200
    * print response

    Given url "http://dummy.restapiexample.com/api/v1/delete/" + id
    When method get
    Then status 200
    * print response

    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/delete/" + id
    When method get
    Then status 200
    * print response