class AddHaveSecondWeekToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :have_second_week, :boolean,default: false
  end
end
