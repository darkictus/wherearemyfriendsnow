class AddSecretToUsers < ActiveRecord::Migration
  def change
    add_column :users, :authsecret, :string
  end
end
