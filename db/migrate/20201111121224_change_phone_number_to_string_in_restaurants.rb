class ChangePhoneNumberToStringInRestaurants < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :phonenumber, :string
    rename_column :restaurants, :phonenumber, :phone_number
  end
end
