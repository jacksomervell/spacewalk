class AddMoonDistanceColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Moon_distance, :integer
  end
end
