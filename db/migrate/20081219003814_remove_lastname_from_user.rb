class RemoveLastnameFromUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :lastname
  end

  def self.down
    add_column :users, :lastname, :string
  end
end
