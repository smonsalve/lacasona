# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Page.delete_all
Page.create(content: 'Estamos ubicados en ... blabla bla', name: 'Acerca de nosotros', permalink: 'about', visible: true)
Page.create(content: 'El Horario de atencion es ... blabla bla', name: 'Horarios', permalink: 'schedule', visible: true)

#Apto/AptoDuplex/Casa/Local/Oficina/Bodega/Lote/Finca/Parcelacion/Consultorio/Apartaestudio
PropertyType.delete_all
PropertyType.create(name: 'Apartamento')
PropertyType.create(name: 'Apartamento Duplex')
PropertyType.create(name: 'Aparta-Estudio')
PropertyType.create(name: 'Bodega')
PropertyType.create(name: 'Casa')
PropertyType.create(name: 'Consultorio')
PropertyType.create(name: 'Finca')
PropertyType.create(name: 'Local')
PropertyType.create(name: 'Lote')
PropertyType.create(name: 'Oficina')
PropertyType.create(name: 'Parcelacion')

