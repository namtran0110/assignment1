class ChangePhoneTypeInOrder < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :phone, :text
  end
end
