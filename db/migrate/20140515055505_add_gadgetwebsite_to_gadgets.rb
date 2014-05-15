class AddGadgetwebsiteToGadgets < ActiveRecord::Migration
  def change
  	add_column :gadgets, :gadgetwebsite, :string
  end
end
