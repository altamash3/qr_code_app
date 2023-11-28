class NewQrCodeColumnInUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :qr_data, :string
  end
end
