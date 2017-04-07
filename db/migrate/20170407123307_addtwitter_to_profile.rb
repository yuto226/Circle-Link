class AddtwitterToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :twitter,:string ,default: ""
  end
end
