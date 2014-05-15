class CreateTypeofmethods < ActiveRecord::Migration
  def change
    create_table :typeofmethods do |t|
    	t.string :name
    	
      t.timestamps
    end
  end
end
