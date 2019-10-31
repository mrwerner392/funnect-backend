class AddTimeMinuteToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :time_minute, :integer
  end
end
