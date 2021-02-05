Feature: Karate Test Suite 11
  Calling Javascript

  Scenario: Javascript Function Test Case 1
    * def fn1 = function(){return 123;}

    * def fn2 =
      """
      function(id) {
        karate.log(id);
      }
      """
    * print fn1()
    * fn2(33)




