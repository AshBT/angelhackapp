class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.datetime :time
      t.integer :BPM
      t.integer :IBI

      t.timestamps
    end
  end
end
