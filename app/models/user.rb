require 'valid_email'

class User < ActiveRecord::Base

  include ActiveModel::Validations

  attr_accessible :email, :min_investment, :max_investment, :name, :phone
  
  phony_normalize :phone, :default_country_code => 'IL'
  
  validates :email, :presence => true, :email => true
  validates :name, 
    :presence => true, 
    :length => {
      :minimum => 4, 
      :maximum => 5, 
      :tokenizer => lambda { |str| str.scan(/\w+/) }, 
        too_short: "Please provide us with your full name",
        too_long: "That is not a real name"
      }
  validates :phone, :presence => true, :numericality => true
  validates :phone, :phony_plausible => true
  
end
