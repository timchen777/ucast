class CreateEmailusers < ActiveRecord::Migration
  def change
    create_table :emailusers do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps null: false
    end
  end
end
