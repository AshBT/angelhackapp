class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.integer :height
      t.boolean :diabetes
      t.boolean :tobacco
      t.integer :physical_activity
      t.integer :weight

      t.timestamps
    end
  end
end
