# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ActiveRecord::Base
attr_accessible :name
has_and_belongs_to_many :songs
validates :name, :length => { :minimum => 2 }, :uniqueness => true, :presence => true

end
