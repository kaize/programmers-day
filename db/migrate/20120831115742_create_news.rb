class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :name
      t.text :body
      t.string :image
      t.datetime :published_at
      t.string :state

      t.timestamps
    end
  end
end
