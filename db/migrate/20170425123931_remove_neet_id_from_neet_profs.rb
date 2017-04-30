class RemoveNeetIdFromNeetProfs < ActiveRecord::Migration[5.0]
  def change
    remove_column :neet_profs, :neet_id, :integer
  end
end
