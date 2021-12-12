class ChangeColumnDefault < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurants, :image, :string, :default => "https://images.pexels.com/photos/6267/menu-restaurant-vintage-table.jpg?auto=compress&cs=tinysrgb&dpr=1&w=400"
  end
end
