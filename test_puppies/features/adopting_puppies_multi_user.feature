Feature: Adopting two puppies

  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture

  Scenario Outline: Adopting one puppy
    Given I am on the puppy adoption site
    When I click the View Details button
    And I click the adopt me button
    And I click the Adopt Another Puppy button
    And I click the second View Details button
    And I click the adopt me button
    And I click the Complete the Adoption button
    And I enter "<name>" in the name field
    And I enter "<address>" in the address field
    And I enter "<email>" in the email field
    And I select the "<payment_type>" from the pay with dropdown
    And I click the place order button
    Then I should see "Thank you for adopting a puppy!"

  Examples:
    | name   | address                        | email             | payment_type   |
    | Vikram | 400 The Spires, Hertford Shire | vikram@vikram.com | Credit card    |
    | Rakesh | 777 Westacott, Middlesex       | rakesh@rakesh.com | Check          |
    | Steven | 222 Park Road, Middlesex       | steven@steven.com | Purchase order |