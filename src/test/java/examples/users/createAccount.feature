Feature: API 11 - POST Create/Register User Account

  Background:
    * url baseUrl

  Scenario: Crear una cuenta de usuario exitosamente
    * def email = 'testuser_karate_' + java.util.UUID.randomUUID() + '@test.com'
    * def password = 'password123'

    * def user =
      """
      {
        name: 'TestUser',
        email: '#(email)',
        password: '#(password)',
        title: 'Mr',
        birth_date: '15',
        birth_month: '6',
        birth_year: '1995',
        firstname: 'Test',
        lastname: 'User',
        company: 'TestCompany',
        address1: 'Calle 123',
        address2: 'Apt 456',
        country: 'Canada',
        zipcode: '12345',
        state: 'Ontario',
        city: 'Toronto',
        mobile_number: '1234567890'
      }
      """

    Given path '/createAccount'
    And form fields user
    When method post
    Then status 200
    And match response.responseCode == 201
    And match response.message == 'User created!'
