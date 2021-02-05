Feature:  Karate Test Suite 16
  Writing Response to an External File

  Scenario: Writing to a file

    * def temp = Java.type('misc.Utils')
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200

    #to hold a specfic response in one variable
    #* def res = get response $.data.[0].email

    #to hold complete response in one variable
    * def res = get response
    * print res
    * temp.writeToFile("result.json", res);
    * temp.writeToFile("result.txt", res);

  Scenario: Reading result json file

    * def jsonData = read("classpath:result.json")
    * def textData = read("classpath:result.txt")
    * print jsonData
    * print textData




