class Student < ActiveRecord::Base
  		   					attr_accessible :name, :studentid, :nickname, :project, 
:finalgrade, :labgrade, :classgrade
	validates :name, :studentid, :nickname, presence: true
	validates :studentid, numericality:{only_integer: true}
	validates :project, :finalgrade, :labgrade, :classgrade, presence: true
	validates :project, :finalgrade, numericality: {
		only_integer: true,
		greater_than_or_equal_to: 0,
		less_than_or_equal_to: 40
}
	validates :labgrade, :classgrade, numericality: {
		only_integer: true,
		greater_than_or_equal_to: 0,
		less_than_or_equal_to: 10
}
		
		
end
