class AddCol < ActiveRecord::Migration
  def change
	add_column :students, :nickname, :string
	add_column :students, :project, :string
  end

end
