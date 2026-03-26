Feature: API 13 - PUT Update User Account

  Background:
    * url baseUrl

  Scenario: Actualizar una cuenta de usuario exitosamente
    * def result = call read('createAccount.feature')

    * def updatedUser =
      """
      {
        name: 'UpdatedUser',
        email: '#(result.email)',
        password: '#(result.password)',
        title: 'Mrs',
        birth_date: '25',
        birth_month: '12',
        birth_year: '1985',
        firstname: 'Updated',
        lastname: 'UserModified',
        company: 'NewCompany',
        address1: 'Calle Nueva 200',
        address2: 'Suite 300',
        country: 'Australia',
        zipcode: '22222',
        state: 'New South Wales',
        city: 'Sydney',
        mobile_number: '2222222222'
      }
      """

    Given path '/updateAccount'
    And form fields updatedUser
    When method put
    Then status 200
    And match response.responseCode == 200
    And match response.message == 'User updated!'
