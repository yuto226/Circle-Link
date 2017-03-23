class R < ActiveRecord::Migration[5.0]
  def change
        add_column :profiles, :time_start, :string
        add_column :profiles, :time_end, :string ,default: ""
  end
end
