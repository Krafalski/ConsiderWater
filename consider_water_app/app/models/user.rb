class User < ActiveRecord::Base

  has_many :journal_entries, dependent: :destroy
  has_many :mood_ratings, dependent: :destroy
  validates :username, presence: true, uniqueness:true
  has_secure_password
end
