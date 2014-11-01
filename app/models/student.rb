class Student < ActiveRecord::Base
attr_accessible :name, :studentid, :nickname, :finalgrade, :project1, :project2, :project3,
  :lab1,:lab2,:lab3,:lab4,:lab5,:lab6,:lab7, :class1,:class2,:class3,:class4,:class5,:class6,
  :class7,:class8,:class9,:class10

	validates :name, :studentid, :nickname, presence: true
	validates :studentid, numericality:{only_integer: true}
	validates :finalgrade,:project1, :project2, :project3,:lab1,:lab2,:lab3,:lab4,:lab5,:lab6,
	:lab7, :class1,:class2,:class3,:class4,:class5,:class6,:class7,:class8,:class9,:class10, presence: true
	validates :finalgrade, numericality: {
		only_integer: true,
		greater_than_or_equal_to: 0,
		less_than_or_equal_to: 100
}
	validates :project1, :project2, :project3,:lab1,:lab2,:lab3,:lab4,:lab5,:lab6,:lab7, 
	:class1,:class2,:class3,:class4,:class5,:class6,:class7,:class8,:class9,:class10 ,numericality: {
		only_integer: true,
		greater_than_or_equal_to: 0,
		less_than_or_equal_to: 100
}
		
		
end
