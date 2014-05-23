require 'valid_email'

class User < ActiveRecord::Base

  include ActiveModel::Validations

  attr_accessible :email, :min_investment, :max_investment, :name, :phone, :investment_help
  
  phony_normalize :phone, :default_country_code => 'IL'
  
  validates :email, :presence => true, :email => true
  validates :name, 
    :presence => true, 
    :length => {
      :minimum => 2, 
      :maximum => 3, 
      :tokenizer => lambda { |str| str.scan(/\w+/) }, 
        too_short: "Please provide us with your full name",
        too_long: "must have at most %{count} words"
      }
  validates :phone, :presence => true, :numericality => true
  validates :phone, :phony_plausible => true
  
  def investment_help
    
  end
  def investment_help=(help)
    
  end
end
