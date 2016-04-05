class User < ActiveRecord::Base
  has_many :journal_entries
  has_many :mood_ratings
 validates :username, presence: true, uniqueness:true

 has_secure_password
end
