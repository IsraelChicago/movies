class AddKnownForToActors < ActiveRecord::Migration[5.2]
  def change
    add_column :actors, :known_for, :string
  end
end
