class RemoveUsernameFromAdmin < ActiveRecord::Migration[5.0]
  def change
    remove_column :admins, :username, :string
    add_column :profiles, :username, :string
  end
end
