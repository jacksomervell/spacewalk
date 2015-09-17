class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :type
      t.string :distance
      t.string :location

      t.timestamps null: false
    end
  end
end
