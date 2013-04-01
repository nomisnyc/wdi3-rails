# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  filename   :string(255)
#  album_id   :integer
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  attr_accessible :filename, :name, :artist_id, :album_id, :image, :genre_ids, :artist
  belongs_to :album
  belongs_to :artist
  has_and_belongs_to_many :mixtapes
  has_and_belongs_to_many :genres
  # validates :name, :length => { :minimum => 2 }, :uniqueness => true, :presence => true
end
