class AddJanruToNeetProfs < ActiveRecord::Migration[5.0]
  def change
    add_column :neet_profs, :janru, :text
  end
end
