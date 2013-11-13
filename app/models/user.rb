class User < ActiveRecord::Base
has_secure_password

validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/} 
validates_presence_of :name
validates_uniqueness_of :name
end
