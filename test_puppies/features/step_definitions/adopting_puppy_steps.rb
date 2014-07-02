Given(/^I am on the puppy adoption site$/) do
  # @browser.goto "http://puppies.herokuapp.com"
  # @home=HomePage.new(@browser)
  visit(HomePage)
end
When(/^I click the View Details button for "([^"]*)"$/) do |name|
  # @browser.button(:value => 'View Details', :index => 0).click
  # @details = DetailsPage.new(@browser)
  # on(HomePage).select_puppy_number 1
  on(HomePage).select_puppy name

end
And(/^I click the adopt me button$/) do
  # @browser.button(:value => 'Adopt Me!').click
  # @cart = ShoppingCartPage.new(@browser)
  on(DetailsPage).add_to_cart
end
And(/^I click the Adopt Another Puppy button$/) do
  # @browser.button(:value => 'Adopt Another Puppy').click
  # @cart.continue_shopping
  on(ShoppingCartPage).continue_Shopping
end
And(/^I click the second View Details button$/) do
  @browser.button(:value => 'View Details', :index => 1).click
  @details = DetailsPage.new(@browser)
end
And(/^I click the Complete the Adoption button$/) do
  # @browser.button(:value => 'Complete the Adoption').click
  # @cart.proceed_to_checkout
  # @checkout=CheckoutPage.new(@browser)
  on(ShoppingCartPage).proceed_to_checkout
end
And(/^I enter "(.*?)" in the name field$/) do |name|
  # @browser.text_field(:id => 'order_name').set(name)
  # @checkout.name=name
  on(CheckoutPage).name = name
end
And(/^I enter "(.*?)" in the address field$/) do |address|
  # @browser.text_field(:id => 'order_address').set(address)
  # @checkout.address =address
  on(CheckoutPage).address = address
end
And(/^I enter "(.*?)" in the email field$/) do |email|
  # @browser.text_field(:id => 'order_email').set(email)
  # @checkout.email =email
  on(CheckoutPage).email=email
end
And(/^I select the "(.*?)" from the pay with dropdown$/) do |pay_type|
  # @browser.select_list(:id => 'order_pay_type').select(pay_type)
  # @checkout.pay_type =pay_type
  on(CheckoutPage).pay_type=pay_type
end
And(/^I click the place order button$/) do
  # @browser.button(:value => 'Place Order').click
  # @checkout.place_order
  on(CheckoutPage).place_order
end
Then(/^I should see "(.*?)"$/) do |expected|

  # The below statement is an alternative way to write the assertion.
  # Its a Rspec matcher
  # Rspec is a collection of ruby gems used for unit testing Ruby application
  # @browser.text.should include expected
  @current_page.text.should include expected
end
Then(/^I should see "([^"]*?)" as the name for line item (\d+)$/) do |text, row_number|
  # cart_line_item(row_number.to_i)[1].text.should include text
  on(ShoppingCartPage).name_for_line_item(row_number).should include text
end
And(/^I should see "([^"]*?)" as the subtotal for line item (\d+)$/) do |price, row_number|
  # cart_line_item(row_number.to_i)[3].text.should == price
  on(ShoppingCartPage).subtotal_for_line_item(row_number).should == price
end
And(/^I Should see "([^"]*?)" as the cart total$/) do |price|
  # @browser.td(:class => 'total_cell').text.should == price
  on(ShoppingCartPage).cart_total.should == price
end
#
And(/^I should see "(.*?)" as the cart total$/) do |price|
  # @browser.td(:class => 'total_cell').text.should == price
  on(ShoppingCartPage).cart_total.should == price
end