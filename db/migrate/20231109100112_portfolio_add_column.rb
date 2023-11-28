class PortfolioAddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :user_id, :integer
    add_column :portfolios, :title, :string
  end
end
