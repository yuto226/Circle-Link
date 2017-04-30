class AddNameToNeetProfs < ActiveRecord::Migration[5.0]
  def change
    add_column :neet_profs, :name, :text
  end
end
