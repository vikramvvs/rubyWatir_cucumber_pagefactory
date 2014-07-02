class CheckoutPage
  include PageObject

  text_field(:name, :id => "order_name")
  text_field(:address, :id => "order_address")
  text_field(:email, :id => "order_email")
  select_list(:payType, :id => "order_pay_type")
  button(:clickButton, :value => "Place Order")
  # def initialize(browser)
  #   @browser=browser
  # end
  # def name=(name)
  #   @browser.text_field(:id => 'order_name').set(name)
  # end
  # def address=(adress)
  #   @browser.text_field(:id => 'order_address').set(adress)
  # end
  # def email=(email)
  #   @browser.text_field(:id => 'order_email').set(email)
  # end
  # def pay_type=(pay_type)
  #   @browser.select_list(:id => 'order_pay_type').select(pay_type)
  # end
  # def place_order
  #   @browser.button(:value => 'Place Order').click
  # end

end