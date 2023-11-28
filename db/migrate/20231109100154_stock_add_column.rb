class StockAddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :stocks, :symbol, :string
    add_column :stocks, :purchase_price, :decimal
    add_column :stocks, :quantity, :integer
    add_column :stocks, :remaining, :integer
  end
end
