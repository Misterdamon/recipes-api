class CreateUsers < ActiveRecord::Migration
  create_table :users do |u|
  	u.string :username
  	u.string :password_hash
  	u.string :api_key, default: ""
  	u.timestamps
  end
end

