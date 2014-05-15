class CreateAnalysysgroups < ActiveRecord::Migration
  def change
    create_table :analysysgroups do |t|
    	t.string :name
    	
      t.timestamps
    end
  end
end
