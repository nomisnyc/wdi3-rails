# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ActiveRecord::Base
attr_accessible :name, :image
has_many :songs
has_many :albums, :through => :songs
validates :name, :length => { :minimum => 2 }, :uniqueness => true, :presence => true

end
