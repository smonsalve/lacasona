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
pt1 = PropertyType.create(name: 'Apartamento')
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

Facility.delete_all
Facility.create(name: 'Habitacion')
Facility.create(name: 'Banio')
Facility.create(name: 'Balcon')
Facility.create(name: 'Cocina')
Facility.create(name: 'Sala')
Facility.create(name: 'Comedor')
Facility.create(name: 'Sala-Comedor')
Facility.create(name: 'Red de gas')

LegalNature.delete_all
ln1 = LegalNature.create(name: "Natural")
LegalNature.create(name: "Juridico")

TaxRegime.delete_all
tr1 = TaxRegime.create(name: "Comun", tax_percentage: 0.16)
TaxRegime.create(name: "Simplificado", tax_percentage: 0.0)

Person.delete_all
p1 = Person.create(address: "Calle 75 #23", card_id_number: "1039452505", cellphone: "3007840369", email: 'jous32@gmail.com', legal_nature_id: ln1.id, name: 'Jose Vasquez', phone: '2880421', tax_regime_id: tr1.id)
p2 = Person.create(address: "Calle 123", card_id_number: "1039459487", cellphone: "3188762536", email: 'adrimavas@hotmail.com', legal_nature_id: ln1.id, name: 'Adriana Vasquez', phone: '2880421', tax_regime_id: tr1.id)

Property.delete_all
prop1 = Property.create(address: 'Calle alquilada 123', appraisal: '100000', city: 'Sabaneta', code: 1, market_value: 150000000, neighborhood: 'Aves maria', owner_id: p1.id, phone: '2880421', property_type_id: pt1.id, rental_fee: 970000, stratum: 4)
prop2 = Property.create(address: 'Calle alquilada 234', appraisal: '100000', city: 'Sabaneta', code: 1, market_value: 150000000, neighborhood: 'Aves maria', owner_id: p2.id, phone: '2880421', property_type_id: pt1.id, rental_fee: 970000, stratum: 4)

Contract.delete_all
Contract.create(code: 1, final_date: '2014-03-26', initial_date: '2013-03-26', lessee_id: p2.id, owner_id: p1.id , pay_day: 1, property_id: prop1.id, rate_commission: 0.1, active: true)


