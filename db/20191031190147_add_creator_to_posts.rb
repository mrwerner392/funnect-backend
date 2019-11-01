class AddCreatorToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :creator, null: false, foreign_key: {to_table: :users}, index: true
  end
end
