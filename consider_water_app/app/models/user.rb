class User < ActiveRecord::Base
  has_many :journal_entries
 validates :username, presence: true, uniqueness:true

 has_secure_password
end
