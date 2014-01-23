class CreateRecipes < ActiveRecord::Migration
  def up
    create_table :recipes do |t|
        t.string :name
        t.string :description
        t.integer :length
        t.integer :difficulty
        t.timestamps
      end
  end
end