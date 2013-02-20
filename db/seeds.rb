# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pages.delete_all
Pages.create(content: 'Estamos ubicados en ... blabla bla', name: 'Acerca de nosotros', permalink: 'about')
Pages.create(content: 'El Horario de atencion es ... blabla bla', name: 'Horarios', permalink: 'schedule')
