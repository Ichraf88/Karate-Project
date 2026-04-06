@Test
 
  Feature: Get Api Demo
  Background:
    * url baseUrl
    #* configure headers = { Authorization: 'Bearer ' + token }
    * header Content-Type = 'application/json'


    Scenario: Get Demo 1
      Given path 'users'
      When method get
      Then match responseStatus == httpStatus.success.ok
      And print response
      And print responseStatus
      And print responseHeaders
      And print responseCookies