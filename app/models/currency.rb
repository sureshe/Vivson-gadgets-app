class Currency < ActiveRecord::Base
	attr_accessible :name
  has_one :gadgets
end
