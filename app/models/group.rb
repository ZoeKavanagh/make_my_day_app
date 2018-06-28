class Group < ApplicationRecord

  has_and_belongs_to_many :users
  attr_accessor :name, :group_id

end
