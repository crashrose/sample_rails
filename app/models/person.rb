class Person < ActiveRecord::Base

	has_many :roles
	has_many :projects, :through => :roles
	# accepts_nested_attributes_for :roles
	# accepts_nested_attributes_for :projects

	validates :first_name,	:presence => true
	validates :last_name,	:presence => true

	before_save :cleanup

	scope :all_lazy,		-> 		{ select('last_name')}
	scope :find_lazy,		->(id)	{ where(primary_key => id) }	
	scope :all_lazy_last,	-> 		{all_lazy.order(last_name: :desc)}


	def name
		"#{first_name} #{last_name}"
	end

	private
	def cleanup
		self[:first_name] = self[:first_name].capitalize
	end
end
