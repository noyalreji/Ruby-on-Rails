class User < ActiveRecord::Base
    validates :namer, presence: true
end
