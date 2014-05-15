class Addevaluationbynrcandevaluator < ActiveRecord::Migration
  
  def up
  	add_column :gadgets, :evaluation_by_evaluator, :boolean, default: false
  	add_column :gadgets, :evaluation_by_nrc, :boolean, default: false  
  end

  def down
  	remove_column :gadgets, :evaluation_by_evaluator
  	remove_column :gadgets, :evaluation_by_nrc
  end
  
end
