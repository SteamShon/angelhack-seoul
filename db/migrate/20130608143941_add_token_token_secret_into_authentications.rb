class AddTokenTokenSecretIntoAuthentications < ActiveRecord::Migration
  def up
    add_column :authentications, :token, :string
    add_column :authentications, :token_secret, :string
  end

  def down
  end
end
