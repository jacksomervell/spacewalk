class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :sessions, :type, :activity
  end
end
