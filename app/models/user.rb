class User < ApplicationRecord
  has_many :comments
  has_one :contact
end
