class AddCurrencyIdToGadgets < ActiveRecord::Migration
  def change
    add_column :gadgets, :CurrencyID, :string
  end
end
