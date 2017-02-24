class CreateSeraches < ActiveRecord::Migration
  def change
    create_table :seraches do |t|
      t.string :keyword

      t.timestamps null: false
    end
  end
end
