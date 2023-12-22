Feature: GET request untuk mendapatkan informasi pengguna berdasarkan username

  Background:
    Given url 'https://petstore.swagger.io/v2'
    * def username = 'username'
    And print "===Get User==="

  Scenario: GET request untuk mendapatkan informasi pengguna berdasarkan username
    Given path '/user/' + username
    When method GET
    Then status 200
    And print response