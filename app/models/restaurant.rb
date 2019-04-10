class Restaurant < ApplicationRecord
  has_many :offers

  validates :username, uniqueness: true
  has_secure_password

end
