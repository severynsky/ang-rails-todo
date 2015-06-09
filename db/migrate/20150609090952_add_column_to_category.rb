class AddColumnToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :lists_id, :integer
  end
end
