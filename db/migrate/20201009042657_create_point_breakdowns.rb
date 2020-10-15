class CreatePointBreakdowns < ActiveRecord::Migration[5.1]
  def change
    create_table :point_breakdowns do |t|
      t.integer :user_point_id
      t.integer :point_history_id
      t.integer :point

      t.timestamps
    end
    
    add_index :point_breakdowns, :user_point_id
    add_index :point_breakdowns, :point_history_id
  end
end
