class StockAddColumnOfPortId < ActiveRecord::Migration[5.1]
  def change
    add_column :stocks, :portfolio_id, :string
  end
end
