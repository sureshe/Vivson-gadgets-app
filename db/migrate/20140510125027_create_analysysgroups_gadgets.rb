class CreateAnalysysgroupsGadgets < ActiveRecord::Migration
  def change
    create_table :analysysgroups_gadgets do |t|
    	t.references :analysysgroup
    	t.references :gadget
    end
  end
end
