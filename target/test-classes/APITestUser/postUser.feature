Feature: POST request untuk membuat pengguna baru

  Background:
    Given url 'https://petstore.swagger.io/v2'
    * def username = 'username'
    And print "===Post User==="

  Scenario: POST request untuk membuat pengguna baru
    Given request {id: 1, username: '#(username)', firstName: 'muhammad', lastName: 'ali', email: 'muhali@gmail.com', password: 'muhmali2023', phone: '081213141516', userStatus: 0, anotherUsernameField: '{{username}}' }
    And path '/user/'
    And headers { Accept: 'application/json' }
    When method POST
    Then status 200
    And print response
