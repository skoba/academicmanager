# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Scale.create(t_measured: 1.day.ago, f_number: 3000, f_size: 450000)
Scale.create(t_measured: 2.days.ago, f_number: 2800, f_size: 430000)
Scale.create(t_measured: 3.days.ago, f_number: 2500, f_size: 400000)
Scale.create(t_measured: 4.days.ago, f_number: 2400, f_size: 320000)
Scale.create(t_measured: 5.days.ago, f_number: 2000, f_size: 280000)
