# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#  balance         :decimal(, )      default(0.0)
#

class User < ActiveRecord::Base
has_secure_password
attr_accessible :name, :image, :password, :password_confirmation, :balance, :is_admin
has_many :mixtapes
has_and_belongs_to_many :albums
validates :image, :presence => true
validates :name, :length => { :minimum => 4 }, :uniqueness => true
validates :balance, :numericality => { :greater_than => 0 }
end
