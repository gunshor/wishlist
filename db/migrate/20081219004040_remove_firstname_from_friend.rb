class RemoveFirstnameFromFriend < ActiveRecord::Migration
  def self.up
    remove_column :friends, :firstname
  end

  def self.down
    add_column :friends, :firstname, :string
  end
end
