class RemoveTimefromProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :time, :integer
    add_column :profiles, :time_start, :string
    add_column :profiles, :time_end, :string ,default: ""
  end
end
