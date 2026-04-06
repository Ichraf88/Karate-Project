@Test @smoketesting
  Feature: GET user

      Background:
        * url baseUrl
        #* configure headers = { Authorization: 'Bearer ' + token }
        * header Content-Type = 'application/json'

  Scenario: Get all users

      Given path '/users'
      When  method GET
     Then  match responseStatus == httpStatus.success.ok

    Scenario: GET user by valid id
      Given path 'users'
      And param page = 1
      When method GET
      Then match responseStatus == httpStatus.success.ok
      And  match response[0].id == 1
      And  match response[0].email == 'Sincere@april.biz'

      Scenario: Get user with invalid id
        Given path 'users'
        And param page = 99
        When method Get
        Then match responseStatus == httpStatus.success.ok

        Scenario: Validate all users fields
          Given path 'users'
          When method GET
          Then match responseStatus == httpStatus.success.ok
          And match each response[*].id == '#number'
          And match each response[*].name == '#string'
          And match each response[*].email == '#string'
          And match each response[*].address.suite == '#notnull'




