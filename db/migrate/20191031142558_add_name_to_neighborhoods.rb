class AddNameToNeighborhoods < ActiveRecord::Migration[6.0]
  def change
    add_column :neighborhoods, :name, :string
  end
end
