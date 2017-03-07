class RemoveNumFromGenre < ActiveRecord::Migration[5.0]
  def change
    remove_column :genres, :num, :integer
    add_column :genres, :name, :string
  end
end
