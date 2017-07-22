class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :picture
      t.date :date_spotted
      t.string :location
      t.string :colour
      t.string :description
      t.integer :rating
      t.boolean :would_pat_again

      t.timestamps
    end
  end
end
