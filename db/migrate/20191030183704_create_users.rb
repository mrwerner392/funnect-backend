class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :username
      t.string :password_digest
      t.integer :age
      t.string :gender
      t.string :bio
      t.string :college
      t.string :occupation

      t.timestamps
    end
  end
end
