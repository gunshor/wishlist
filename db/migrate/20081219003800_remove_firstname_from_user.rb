class RemoveFirstnameFromUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :firstname
  end

  def self.down
    add_column :users, :firstname, :string
  end
end
