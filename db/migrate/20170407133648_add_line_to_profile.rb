class AddLineToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :line_image, :string
  end
end
