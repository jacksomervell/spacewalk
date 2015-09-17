class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.string :distance
      t.text :wording
      t.string :image

      t.timestamps null: false
    end
  end
end
