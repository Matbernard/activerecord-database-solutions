class AddUserId < ActiveRecord::Migration
  def up
    def change
       add_column :recipes, :user_id, :integer
     end
  end
end