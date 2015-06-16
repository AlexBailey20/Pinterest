class User < ActiveRecord::Base
	has_many :pins
	has_many :items, through: :pins
end
