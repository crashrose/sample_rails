class Project < ActiveRecord::Base

	has_many :roles, :dependent => :destroy
	# accepts_nested_attributes_for :roles

	validates :title, :presence => true
end
