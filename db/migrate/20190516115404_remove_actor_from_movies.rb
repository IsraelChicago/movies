class RemoveActorFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :actor, :integer
  end
end
