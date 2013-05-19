class Fixcolumnname < ActiveRecord::Migration
  def up
  	rename_column :Events, :type, :event_type
  end

  def down
  end
end
