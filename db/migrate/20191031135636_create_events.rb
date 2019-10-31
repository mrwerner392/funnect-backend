class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.belongs_to :post, null: false, foreign_key: true
      t.string :description
      t.string :location
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
