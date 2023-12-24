Feature: DELETE request untuk menghapus pengguna berdasarkan username

  Background:
    Given url 'https://petstore.swagger.io/v2'
    * def username = 'username'
    And print "===Delete User==="

  Scenario: DELETE request untuk menghapus pengguna
    Given path '/user/'+username
    When method DELETE
    Then status 200
    And print response