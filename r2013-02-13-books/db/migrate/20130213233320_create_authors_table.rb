class CreateAuthorsTable < ActiveRecord::Migration

def change
create_table :authors do |t|
    t.string :name
    t.string :nationality
    t.date :dob
    t.string :genre
    t.text :image
    t.timestamps
      end
    end
  end
