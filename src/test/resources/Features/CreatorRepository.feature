Feature:Create repository
  In order to collaborate with project team and track the work
  As a user
  I want to create a remote repository

  Scenario: Create valid remote repository
    Given I am an authenticated github user
    When I send the request to create a repository with name as "Selenium-gitrepo" and with the description "Contains selenium code"
    Then the response code should be 200
    Then the response should contain the respository name "selenium-gitrepo"
    Then the response time should be less than 5000 milliseconds

  Scenario: Create invalid remote repository
    Given I am an authenticated github user
    When I send the request to create a repository with name as "Selenium-gitrepo" and with the description "Contains selenium code"
    Then the response code should be 404
    Then the response should contain the respository name "selenium-gitrepo"
    Then the response time should be less than 5000 milliseconds
