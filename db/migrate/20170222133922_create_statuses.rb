class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.boolean :online
      t.integer :vote_count
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
