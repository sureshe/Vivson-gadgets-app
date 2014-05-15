class AddqualifyareasofinterestToGadgets < ActiveRecord::Migration
  def change
  	add_column :gadgets, :qualifyareasofinterest, :string
  end
end
