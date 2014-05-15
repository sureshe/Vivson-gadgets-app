class AddemailToGadgets < ActiveRecord::Migration
  def change
  	add_column :gadgets, :email, :string
  end
end
