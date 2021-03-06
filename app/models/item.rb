class Item < ActiveRecord::Base
	has_many :pins
	has_many :users , through: :pins

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>"}
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	validates(:name, {
		:presence => true, 
	})
	validates(:description, :presence => true)
	validates(:price, :presence => true)
	validates(:avatar, :presence => true)
end
