class AddHostToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :host, null: false, foreign_key: {to_table: :users}, index: true
  end
end
