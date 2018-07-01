class AddAuthenticationTokenToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :auhtentication_token, :string, limit: 30
    add_index :users, :auhtentication_token, unique: true
  end
end
