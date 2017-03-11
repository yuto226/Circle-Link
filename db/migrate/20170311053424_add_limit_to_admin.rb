class AddLimitToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :limit, :integer,:default => 5
  end
end
