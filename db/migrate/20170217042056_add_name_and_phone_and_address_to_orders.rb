class AddNameAndPhoneAndAddressToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :name, :string
    add_column :orders, :phone, :integer
    add_column :orders, :address, :string
  end
end
