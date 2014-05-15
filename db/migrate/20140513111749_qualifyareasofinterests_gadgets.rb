class QualifyareasofinterestsGadgets < ActiveRecord::Migration
  def change
  	create_table :gadgets_qualifyareasofinterests, id: false do |t|
    	t.references :gadget
    	t.references :qualifyareasofinterest
    end
  end
end
