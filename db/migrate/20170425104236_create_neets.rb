class CreateNeets < ActiveRecord::Migration[5.0]
  def change
    create_table :neets do |t|
      t.text :name
      t.text :prof_pic

      t.timestamps
    end
  end
end
