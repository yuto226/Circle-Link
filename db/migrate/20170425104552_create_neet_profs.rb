class CreateNeetProfs < ActiveRecord::Migration[5.0]
  def change
    create_table :neet_profs do |t|
      t.integer :neet_id
      t.text :top_pic
      t.text :sub_pic1
      t.text :sub_pic2
      t.text :hoby
      t.text :intraction
      t.text :goal

      t.timestamps
    end
  end
end
