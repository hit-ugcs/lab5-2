class AddCol3 < ActiveRecord::Migration
  def change
	add_column :students, :finalgrade, :string
	add_column :students, :labgrade, :string
	add_column :students, :classgrade, :string
  end
end
