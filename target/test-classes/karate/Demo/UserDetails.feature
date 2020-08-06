Feature: user details

Scenario: get call test
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
Then print response
* def expectedoutput = read('result.json')
And match response == expectedoutput[0]
And match response.data.id == 2

Scenario: get call test
Given url 'https://reqres.in/api/users/3'
When method GET
Then status 200
Then print response
* def expectedoutput = read('result.json')
And match response == expectedoutput[1]
And match response.data.id == 3