class Book < ActiveRecord::Base
  has_many :bookusers
  has_many :users, through: :bookusers
  belongs_to :category
  belongs_to :author
end
