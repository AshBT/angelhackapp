class CreateReadingIbis < ActiveRecord::Migration
  def change
    create_table :reading_ibis do |t|
      t.datetime :time
      t.integer :ibi

      t.timestamps
    end
  end
end
