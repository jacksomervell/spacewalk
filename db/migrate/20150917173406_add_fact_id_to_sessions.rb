class AddFactIdToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :fact_id, :integer
  end
end
