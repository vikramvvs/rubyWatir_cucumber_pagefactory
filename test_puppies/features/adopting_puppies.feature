Feature: Adopting two puppies

  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture

  Scenario: Adopting one puppy
    Given I am on the puppy adoption site
    When I click the View Details button
    And I click the adopt me button
    And I click the Adopt Another Puppy button
    And I click the second View Details button
    And I click the adopt me button
    And I click the Complete the Adoption button
    And I enter "Vikram" in the name field
    And I enter "400 The Spires, Hertfordshire" in the address field
    And I enter "Vikram@vikram.com" in the email field
    And I select the "Credit card" from the pay with dropdown
    And I click the place order button
    Then I should see "Thank you for adopting a puppy!"