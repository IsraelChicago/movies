class AddDirectorToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :director, :string
    add_column :movies, :actor, :string
    add_column :movies, :english, :boolean, default: true
  end
end
