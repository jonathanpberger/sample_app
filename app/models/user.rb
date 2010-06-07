# == Schema Information
# Schema version: 20100607044757
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#

class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation
  
  EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates_presence_of :name, :email
  validates_length_of :name, :maximum => 50
  validates_format_of :email, :with   => EmailRegex
  validates_uniqueness_of :email, :case_sensitive  => false

  # Create the virtual attribute "password_confirmation"
  validates_confirmation_of :password
  
  # Password validations
  validates_presence_of :password
  validates_length_of :password, :within => 6..40
  
  before_save :encrypt_password
  
  private
  
    def encrypt_password
      self.encrypted_password = encrypt(passward)
    end
    
    def encrypt(string)
      string #temporary implementation
    end
end
