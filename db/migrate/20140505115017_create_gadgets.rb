class CreateGadgets < ActiveRecord::Migration
  def up
    create_table :gadgets do |t|
<<<<<<< HEAD
    	t.string :title
=======
    	  t.string :title
>>>>>>> b5df81151ca55bbb045a9f17b2922e37ecce289c
        t.string :method_or_gadget
        t.string :useful_for
        t.string :analysis_group
        t.string :type_of_method_or_gadget
        t.text :gadget_description
        t.decimal :cost
        t.string :company_name
        t.text :company_description
        t.string :company_website
        t.string :technology_used
        t.text :scientific_description
        t.text :field_1_explanation
        t.string :field_2_useful_for_which
        t.text :field_2_explanation
        t.string :name
        t.text :comment
        t.timestamps
    end
  end

  def down
  	drop_table :gadgets
  end

end
