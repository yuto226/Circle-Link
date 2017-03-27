class AddTimeStart2ToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :week_day, :string
    add_column :profiles, :week_day2, :string
    add_column :profiles, :time_start2, :string
    add_column :profiles, :time_end2, :string
  end
end
