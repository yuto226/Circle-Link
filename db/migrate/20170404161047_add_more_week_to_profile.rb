class AddMoreWeekToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :more_week, :boolean,default: false
  end
end
