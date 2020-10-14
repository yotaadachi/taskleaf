class User < ApplicationRecord
  has_secure_password
  # バリデーション
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  # リレーション
  has_many :tasks
end
