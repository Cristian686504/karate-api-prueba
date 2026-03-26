Feature: API 12 - DELETE Delete User Account

  Background:
    * url baseUrl

  Scenario: Eliminar una cuenta de usuario exitosamente
    * def result = call read('createAccount.feature')

    * def credentials =
      """
      {
        email: '#(result.email)',
        password: '#(result.password)'
      }
      """

    Given path '/deleteAccount'
    And form fields credentials
    When method delete
    Then status 200
    And match response.responseCode == 200
    And match response.message == 'Account deleted!'
