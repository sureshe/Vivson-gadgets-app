class AddTooltousersToGadgets < ActiveRecord::Migration
  def change
  	add_column :gadgets, :tooltousers, :string
  end
end
