class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.boolean :admin
      t.string :state

      t.integer :age
      t.string :university
      t.integer :course
      t.string :company
      t.string :phone

      t.timestamps
    end
  end
end
