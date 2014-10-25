class AddStateProgram < ActiveRecord::Migration
  def change
    add_column :chapters, :state_program, :string

  end
end
