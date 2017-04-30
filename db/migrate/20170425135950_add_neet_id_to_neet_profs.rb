class AddNeetIdToNeetProfs < ActiveRecord::Migration[5.0]
  def change
    add_column :neet_profs, :neet_id, :integer
  end
end
