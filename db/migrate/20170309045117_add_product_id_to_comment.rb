class AddProductIdToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :product_id, :integer
    add_column :comments, :user_id, :integer
  end
end
