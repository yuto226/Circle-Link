class AddKindToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :kind_id, :string
  end
end
