class AddColoumnInUserStockProtfolio < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :string
    add_column :users, :username, :string
    add_column :users, :occupation, :string
  end
end
