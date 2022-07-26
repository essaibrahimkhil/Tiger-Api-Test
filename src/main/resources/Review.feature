Feature: Generating New Account Under one Scenario
Scenario: Creat account and Add address phoneNumber and Car
Background:
* def generator = java.type('apiReview.fake.data.FakeDataGenerator')
* def firstName= generator.getFirstName()
* def lastName = generator.getLastName()
* def phoneNumber = generator.getPhoneNumber()
* def Email = generator.getEmail()
* def DOB = generator.getDOB()
And print firstName
And print lastName
And print phoneNumber
And print Email
And print DOB
Given path"api/accounts/add-primary-account"
And request {
 """
  "email": #"Email",
  "firstName": #"firstName",
  "lastName": #"lastName",
  "title": "Mr.",
  "gender": "MALE",
  "maritalStatus": "MARRIED",
  "employmentStatus": "Student",
  "dateOfBirth": #"DOB",
}
"""
And header Authorization = ""Bearer " + generatedToken









Given Url "https://tek-insurance-api.azurewebsites.net/"
And path "/api/token/"
And {"username": "supervisor","password": "tek-supervisor"}
When Method post
Then status 200
 * def generatedToken = response.token
And header Authorization = "Bearer " + generatedToken
        
Given path "/api/accounts/add-account"
And request {

When Method post
Then status 200