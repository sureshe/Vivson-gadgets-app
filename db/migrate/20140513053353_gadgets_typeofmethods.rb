class GadgetsTypeofmethods < ActiveRecord::Migration
  def change
  	create_table :gadgets_typeofmethods do |t|
  		t.references :typeofmethod
    	t.references :gadget
    end
  end
end
