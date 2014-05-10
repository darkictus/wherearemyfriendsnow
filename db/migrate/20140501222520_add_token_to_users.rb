class AddTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :authtoken, :string
  end
end
