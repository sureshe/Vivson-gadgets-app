class Gadget < ActiveRecord::Base
	attr_accessible :title, :method_or_gadget,:useful_for,:analysis_group,
	:gadget_description,:cost,:company_name,:company_description,:company_website,
	:technology_used,:scientific_description,:field_1_explanation,:field_2_useful_for_which,
	:field_2_explanation,:name,:comment
	
	has_and_belongs_to_many :analysysgroups
end

