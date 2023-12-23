Feature: Create User with Incorrect Email

  Background:
    Given url 'https://petstore.swagger.io/v2/user'
    * def username = 'username'
    And print "====Post User Incorrect Email===="

  Scenario: Create a new user with incorrect email format
    Given path 'createWithList'
    And request { id: 2, username: 'testuser', firstName: 'Fahmi', lastName: 'Aja', email: 'fahmi2.email.com', password: 'password', phone: '1234567890', userStatus: 0 }
    When method post
    Then status 400