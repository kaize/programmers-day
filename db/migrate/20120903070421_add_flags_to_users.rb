class AddFlagsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :excursio, :boolean
    add_column :users, :process_personal_data, :boolean
    add_column :users, :subscribe, :boolean
  end
end
