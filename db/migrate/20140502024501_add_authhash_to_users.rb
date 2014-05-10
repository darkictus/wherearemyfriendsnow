class AddAuthhashToUsers < ActiveRecord::Migration
  def change
    add_column :users, :authhash, :string
  end
end
