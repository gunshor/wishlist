class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  has_many :friends
  
  def full_name
    [first_name, last_name].compact.collect.join(' ')
  end
  
end
