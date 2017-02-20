class CreateStatus < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.boolean :online
      t.integer :vote_count
      t.integer :user_id
    end
  end
end
