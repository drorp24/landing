require 'valid_email'
class User < ActiveRecord::Base
  include ActiveModel::Validations
  attr_accessible :email, :min_investment, :name, :phone
  
  validates :name, :presence => true, :length => { :maximum => 100 }
  validates :email, :presence => true, :email => true
  
end
