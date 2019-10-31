class AddTimeAmPmToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :time_am_pm, :string
  end
end
