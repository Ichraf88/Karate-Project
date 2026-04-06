@Test1
Feature: Create Comment

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * def name = randomName()
    * def email = randomEmail()

  Scenario: Create a new comment
    * def payload = read('classpath:features/data/request/add-comments.json')
    Given path 'comments'
    And request payload
    When method POST
    Then match responseStatus == httpStatus.success.created
    And match response.id == '#number'
    And match response.name == payload.name
    And match response.email == payload.email
    And match response.body == payload.body