module Adoption_helper

  def goToThePuppy_adoption_website
    @browser= Watir::Browser.new :firefox
    @browser.goto('http://puppies.herokuapp.com/')
  end
  def adopt_puppy_number(num)
    @browser.button(:value => 'View Details', :index => num).click
    @browser.button(:value => 'Adopt Me!').click
  end

  def adopt_another_puppy
    @browser.button(:value => 'Adopt Another Puppy').click
  end

  def complete_the_adoption
    @browser.button(:value => 'Complete the Adoption').click
  end

  def Check_out_with(name, address, email, payment_method)
    @browser.text_field(:id => 'order_name').set(name)
    @browser.text_field(:id => 'order_address').set(address)
    @browser.text_field(:id => 'order_email').set(email)
    @browser.select_list(:id => 'order_pay_type').select(payment_method)
    @browser.button(:value => 'Place Order').click
  end

  def verify_whether_the_text_displayed(text)
    fail unless @browser.text.include? text
  end
  def close_browser
    @browser.close
  end
end