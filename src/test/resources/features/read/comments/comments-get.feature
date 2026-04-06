@Test
Feature: Tests GET - Récuperation des commentaires

  Background:
    * url baseUrl
    #* configure headers = { Authorization: 'Bearer ' + token }
    * header Content-Type = 'application/json'

  Scenario: GET - Récuperer tous les commentaires avec validation complète
    Given path 'comments'
    When method get
    Then match responseStatus == httpStatus.success.ok
    And print response