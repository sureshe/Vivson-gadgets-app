class CreateQualifyareasofinterests < ActiveRecord::Migration
  def change
    create_table :qualifyareasofinterests do |t|
    	t.string :name
    	
      t.timestamps
    end
  end
end
