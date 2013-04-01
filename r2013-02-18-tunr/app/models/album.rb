# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
attr_accessible :name, :image, :song_ids, :album_ids, :songs
has_many :songs
has_many :artists, :through => :songs
has_and_belongs_to_many :users
validates :name, :length => { :minimum => 4 }, :uniqueness => true, :presence => true

end