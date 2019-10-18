#----------------------------------
# Example of Cucumber .feature file
#----------------------------------
    
Feature: Register

   # A very simple scenario
   Scenario: Custpmer register
      Given I typed my username and password
      When I click "sign up now" button 
      Then The page should be redericted home page

