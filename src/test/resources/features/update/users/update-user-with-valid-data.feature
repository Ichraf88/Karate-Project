@Test1
@Put
Feature: Update user with valid data

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'

  Scenario: Update user with valid data
    Given path 'users', 1
    * def name = 'Ichraf'
    * def email = 'ichraf@example.com'
    * def payload = read('classpath:features/data/request/update-user-valid.json')
    And request payload
    When method PUT
    Then match responseStatus == httpStatus.success.ok
    * print 'payload =', payload
    * print 'response =', response
    And match response contains
    """
    {
      id: 1,
      name: '#(payload.name)',
      username: '#(payload.username)'
    }
    """