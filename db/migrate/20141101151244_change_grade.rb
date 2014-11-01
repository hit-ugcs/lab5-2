class ChangeGrade < ActiveRecord::Migration
  def change
	remove_column :students, :labgrade
	remove_column :students, :classgrade
	remove_column :students, :project
  	add_column :students, :lab1, :int
  	add_column :students, :lab2, :int
  	add_column :students, :lab3, :int
  	add_column :students, :lab4, :int
  	add_column :students, :lab5, :int
  	add_column :students, :lab6, :int
  	add_column :students, :lab7, :int
  	add_column :students, :class1, :int
  	add_column :students, :class2, :int
  	add_column :students, :class3, :int
  	add_column :students, :class4, :int
  	add_column :students, :class5, :int
  	add_column :students, :class6, :int
  	add_column :students, :class7, :int
  	add_column :students, :class8, :int
  	add_column :students, :class9, :int
  	add_column :students, :class10, :int
  	add_column :students, :project1, :int
  	add_column :students, :project2, :int
  	add_column :students, :project3, :int
  end
end
