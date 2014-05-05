class CreateGadgets < ActiveRecord::Migration
  def change
    create_table :gadgets do |t|
      t.string:gatgetapp 
      t.string:name_of_the_tool
      t.string:analysis_groups

      t.timestamps
    end
  end
end
