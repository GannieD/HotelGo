#----------------------------------
# Example of Cucumber .feature file
#----------------------------------
    
Feature: Register

   # A very simple scenario
   Scenario: Custpmer register
      Given User typed his or her username and password
      When User click "sign up now" button 
      Then The page should be redericted home page
   
