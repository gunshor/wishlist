class RemoveLastnameFromFriend < ActiveRecord::Migration
  def self.up
    remove_column :friends, :lastname
  end

  def self.down
    add_column :friends, :lastname, :string
  end
end
