class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :user_points do |t|
      t.references :user, foreign_key: true
      t.integer :amount
      t.timestamps
    end
  end
end
