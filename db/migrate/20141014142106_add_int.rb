class AddInt < ActiveRecord::Migration
  def change
	remove_column :students, :finalgrade
	remove_column :students, :labgrade
	remove_column :students, :classgrade
	remove_column :students, :project
	add_column :students, :finalgrade, :int
	add_column :students, :labgrade, :int
	add_column :students, :classgrade, :int
	add_column :students, :project, :int
  end

end
