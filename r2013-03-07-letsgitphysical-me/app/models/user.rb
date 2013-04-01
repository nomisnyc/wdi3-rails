class User < ActiveRecord::Base
  attr_accessible :name, :email, :image, :password, :password_confirmation
  has_many :exericises, :inverse_of => :user
  has_secure_password
end
