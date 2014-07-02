require 'rubygems'
require 'watir-webdriver'
require_relative 'adoption_helper'
include Adoption_helper

goToThePuppy_adoption_website
adopt_puppy_number 1
adopt_another_puppy
adopt_puppy_number 2
complete_the_adoption
Check_out_with('Vikram','400 The Spires, Hertford Shire','vikram@vikram.com','Credit card')
verify_whether_the_text_displayed 'Thank you for adopting a puppy!'
close_browser
