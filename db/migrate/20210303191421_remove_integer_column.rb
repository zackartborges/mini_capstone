class RemoveIntegerColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :integer, :string
  end
end
