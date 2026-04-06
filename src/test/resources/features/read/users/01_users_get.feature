@Test
Feature: Tests GET - Récuperation des utilisateurs

  Background:
    * url baseUrl
    #* configure headers = { Authorization: 'Bearer ' + token }
    * header Content-Type = 'application/json'

  Scenario: GET - Récuperer tous les utilisateurs avec validation complète
    Given path 'users'
    When method get
    Then match responseStatus == httpStatus.success.ok
    And print response