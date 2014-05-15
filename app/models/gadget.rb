class Gadget < ActiveRecord::Base
	attr_accessible :title, :method_or_gadget,:useful_for,:analysis_group,
	:gadget_description,:cost,:company_name,:company_description,:company_website,
	:technology_used,:scientific_description,:CurrencyID,:field_1_explanation,
	:field_2_useful_for_which,:field_2_explanation,:name,:comment,
	:type_of_method_or_gadget,:evaluation_by_nrc,:evaluation_by_evaluator,:gadgetwebsite,
	:brochure,:tooltousers
	
	attr_accessible :type_of_method_or_gadget
	attr_accessor :email, :typeofmethod, :qualifyareasofinterest
	
	has_and_belongs_to_many :analysysgroups
	has_and_belongs_to_many :typeofmethods
	has_and_belongs_to_many :qualifyareasofinterests
	
	belongs_to :currency
end

