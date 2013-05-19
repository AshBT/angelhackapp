class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type
      t.datetime :trigger
      t.datetime :end
      t.string :description
      t.string :action_taken
      t.string :status

      t.timestamps
    end
  end
end
