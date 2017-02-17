class AddAdminIdToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :admin_id, :integer
  end
end
