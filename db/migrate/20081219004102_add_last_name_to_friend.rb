class AddLastNameToFriend < ActiveRecord::Migration
  def self.up
    add_column :friends, :last_name, :string
  end

  def self.down
    remove_column :friends, :last_name
  end
end
