class RemoveTimeFromEvents < ActiveRecord::Migration[6.0]
  def change

    remove_column :events, :time, :time
  end
end
