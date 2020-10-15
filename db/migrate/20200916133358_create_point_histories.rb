class CreatePointHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :point_histories do |t|
      t.references :user, foreign_key: true

      t.timestamps
      t.integer :point
    end
  end
end
