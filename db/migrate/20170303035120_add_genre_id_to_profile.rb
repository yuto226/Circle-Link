class AddGenreIdToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :genre_id, :integer
  end
end
