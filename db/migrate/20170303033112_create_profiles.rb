class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.text :prof
      t.integer :num
      t.string :place
      t.integer :time

      t.timestamps
    end
  end
end
