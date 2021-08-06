class User < ActiveRecord::Base
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, :email_address, :age, presence: true
    validates :first_name, :last_name, length: { in: 2..200}
    validates :email_address,  presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
    validates :age, numericality: { only_integer: true, greater_than: 9, less_than: 150 }
end
