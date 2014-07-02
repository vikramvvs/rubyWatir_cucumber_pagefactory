Feature: verifying the display of price

  Background:
    Given I am on the puppy adoption site

  Scenario: Validate the cart with one puppy

    When I click the View Details button for "Brook"
    And I click the adopt me button
    Then I should see "Brook" as the name for line item 1
    And I should see "$34.95" as the subtotal for line item 1
    And I Should see "$34.95" as the cart total

    Scenario: Validate the cart with two puppies

      When I click the View Details button for "Brook"
      And I click the adopt me button
      And I click the Adopt Another Puppy button
      And I click the View Details button for "Hanna"
      And I click the adopt me button
      Then I should see "Brook" as the name for line item 1
      And I should see "$34.95" as the subtotal for line item 1
      And I should see "Hanna" as the name for line item 2
      And I should see "$22.99" as the subtotal for line item 2
      And I should see "$57.94" as the cart total

