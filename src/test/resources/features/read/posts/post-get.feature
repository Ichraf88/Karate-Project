@Test
Feature: Tests GET - Récuperation des posts

  Background:
    * url baseUrl
    #* configure headers = { Authorization: 'Bearer ' + token }
    * header Content-Type = 'application/json'

  Scenario: GET - Récuperer tous les posts avec validation complète
    Given path 'posts'
    When method get
    Then match responseStatus == httpStatus.success.ok
    And print response