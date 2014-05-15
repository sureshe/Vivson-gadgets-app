# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 Analysysgroup.create(name: 'Urin') if Analysysgroup.where(name: 'Urin').first.nil?
 Analysysgroup.create(name: 'Blood') if Analysysgroup.where(name: 'Blood').first.nil?
 Analysysgroup.create(name: 'Skin') if Analysysgroup.where(name: 'Skin').first.nil?
 Analysysgroup.create(name: 'Faeces') if Analysysgroup.where(name: 'Faeces').first.nil?
 Analysysgroup.create(name: 'Food intake') if Analysysgroup.where(name: 'Food intake').first.nil?
 Analysysgroup.create(name: 'Breath') if Analysysgroup.where(name: 'Breath').first.nil?
 Analysysgroup.create(name: 'Activity') if Analysysgroup.where(name: 'Activity').first.nil?
 Analysysgroup.create(name: 'Sleep') if Analysysgroup.where(name: 'Sleep').first.nil?
 Analysysgroup.create(name: 'Others') if Analysysgroup.where(name: 'Others').first.nil?


 Typeofmethod.create(name: 'Non-invasive') if Typeofmethod.where(name: 'Non-invasive').first.nil?
 Typeofmethod.create(name: 'Minimally-invasive') if Typeofmethod.where(name: 'Minimally-invasive').first.nil?
 Typeofmethod.create(name: 'Invasive') if Typeofmethod.where(name: 'Invasive').first.nil?

 Currency.create(name: 'Euros') if Currency.where(name: 'Euros').first.nil?
 Currency.create(name: 'Dollars') if Currency.where(name: 'Dollars').first.nil?
 Currency.create(name: 'Yens') if Currency.where(name: 'Yens').first.nil?
 Currency.create(name: 'Dinars') if Currency.where(name: 'Dinars').first.nil?
 Currency.create(name: 'Pounds') if Currency.where(name: 'Pounds').first.nil?

 Qualifyareasofinterest.create(name: 'Dietary assessment') if Qualifyareasofinterest.where(name: 'Dietary assessment').first.nil?
 Qualifyareasofinterest.create(name: 'health status') if Qualifyareasofinterest.where(name: 'health status').first.nil?
 Qualifyareasofinterest.create(name: 'Physical activity') if Qualifyareasofinterest.where(name: 'Physical activity').first.nil?
 Qualifyareasofinterest.create(name: 'Fitness performance & genotype') if Qualifyareasofinterest.where(name: 'Fitness performance & genotype').first.nil?