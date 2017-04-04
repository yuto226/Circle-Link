class AddPubKeyFromProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :pub_key,:boolean ,default: false
  end
end
