class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
