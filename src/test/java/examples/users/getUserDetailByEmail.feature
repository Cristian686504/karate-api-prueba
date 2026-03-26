Feature: API 14 - GET Get User Detail By Email

  Background:
    * url baseUrl

  Scenario: Obtener detalle de usuario por email exitosamente
    * def result = call read('createAccount.feature')
    * def email = result.email

    * def expectedUser =
      """
      {
        name: 'TestUser',
        email: '#(email)',
        first_name: 'Test',
        last_name: 'User',
        company: 'TestCompany',
        country: 'Canada',
        city: 'Toronto'
      }
      """

    Given path '/getUserDetailByEmail'
    And param email = email
    When method get
    Then status 200
    And match response.responseCode == 200
    And match response.user contains expectedUser
