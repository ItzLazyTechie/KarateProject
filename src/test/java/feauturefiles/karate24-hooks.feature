Feature: Karate Test Suite 24
  UsingHooks feature

  Background:Init
    * print "From background block"
    #* configure afterScenario =
   # """
    #function (){
    #karate.log("from after scenario")
    #}
    #"""
    #* configure afterFeature =
    #"""
    #function (){
    #karate.log("from after feature")
    #}
    #"""


  Scenario: Karate Hooks Test Case 1
    * print "from scenario block"


