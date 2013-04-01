class CreateBooksTable < ActiveRecord::Migration


def change
create_table :books do |t|
    t.string :title
    t.string :genre
    t.date :year
    t.string :publisher
    t.text :image
    t.timestamps
      end
    end
  end