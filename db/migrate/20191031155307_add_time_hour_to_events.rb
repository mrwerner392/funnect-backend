class AddTimeHourToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :time_hour, :integer
  end
end
