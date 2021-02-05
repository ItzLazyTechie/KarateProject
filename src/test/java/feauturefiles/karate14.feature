Feature: Karate Test Suite 11
  Calling Java static and non-static method

  Scenario: Non-static method Test Case

    * def env1 =
      """
      function()
        {
      var temp  = Java.type('misc.Utils')
      var utils = new temp();
      return utils.method2();
      }
      """
    * print env1()
    * def result = call env1
    * print result

  Scenario: static method Test Case

    * def env2 =
      """
      function()
        {
      var temp  = Java.type('misc.Utils')
      return temp.method1();
      }
      """
    * print env2()
    * def result = call env2
    * print result




