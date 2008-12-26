class AddFirstNameToFriend < ActiveRecord::Migration
  def self.up
    add_column :friends, :first_name, :string
  end

  def self.down
    remove_column :friends, :first_name
  end
end
