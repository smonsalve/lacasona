# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Invoice.delete_all
DocumentType.delete_all
docT1 = DocumentType.create(name: 'INVOICE')
docT2 = DocumentType.create(name: 'PAYMENT')

PaymentStatus.delete_all
PaymentStatus.create(description: 'Anulado', code_status: 'CANCELED')
PaymentStatus.create(description: 'Aplicado', code_status: 'APPLIED')
InvoiceStatus.delete_all
InvoiceStatus.create(description: 'Cancelada', code_status: 'CANCELED')
InvoiceStatus.create(description: 'Pendiente de pago', code_status: 'PAYMENT_PENDING')
InvoiceStatus.create(description: 'Pagada', code_status: 'PAID')
InvoiceStatus.create(description: 'Vencida', code_status: 'EXPIRED')

Consecutive.delete_all
Consecutive.create(consecutive_type_id: docT1.id, serie: 1000)
Consecutive.create(consecutive_type_id: docT2.id, serie: 300)

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
p1 = Person.create(address: "Calle 1", card_id_number: "1039452505", cellphone: "3007840369", email: 'jous32@gmail.com', legal_nature_id: ln1.id, name: 'Propietario 1 ', phone: '2880421', tax_regime_id: tr1.id)
p2 = Person.create(address: "Calle 2", card_id_number: "1039459487", cellphone: "3188762536", email: 'adrimavas@hotmail.com', legal_nature_id: ln1.id, name: 'Propietario 2', phone: '2880421', tax_regime_id: tr1.id)
p3 = Person.create(address: "Calle 3", card_id_number: "1039459487", cellphone: "3188762536", email: 'adrimavas@hotmail.com', legal_nature_id: ln1.id, name: 'Propietario 3', phone: '2880421', tax_regime_id: tr1.id)
p4 = Person.create(address: "Calle 4", card_id_number: "1039459487", cellphone: "3188762536", email: 'adrimavas@hotmail.com', legal_nature_id: ln1.id, name: 'Propietario 4', phone: '2880421', tax_regime_id: tr1.id)
p5 = Person.create(address: "Calle 5", card_id_number: "1039459487", cellphone: "3188762536", email: 'adrimavas@hotmail.com', legal_nature_id: ln1.id, name: 'Propietario 5', phone: '2880421', tax_regime_id: tr1.id)
p6 = Person.create(address: "Calle 6", card_id_number: "1039459487", cellphone: "3188762536", email: 'adrimavas@hotmail.com', legal_nature_id: ln1.id, name: 'Propietario 6', phone: '2880421', tax_regime_id: tr1.id)


Property.delete_all
prop1 = Property.create(address: 'Calle alquilada 1', appraisal: '100000', city: 'Sabaneta', code: 1, market_value: 150000000, neighborhood: 'Aves maria', owner_id: p1.id, phone: '2880421', property_type_id: pt1.id, rental_fee: 100000, stratum: 4)
prop2 = Property.create(address: 'Calle alquilada 2', appraisal: '200000', city: 'Sabaneta', code: 1, market_value: 250000000, neighborhood: 'Aves maria', owner_id: p2.id, phone: '2880421', property_type_id: pt1.id, rental_fee: 200000, stratum: 4)
prop3 = Property.create(address: 'Calle alquilada 3', appraisal: '300000', city: 'Sabaneta', code: 1, market_value: 350000000, neighborhood: 'Aves maria', owner_id: p3.id, phone: '2880421', property_type_id: pt1.id, rental_fee: 300000, stratum: 4)
prop4 = Property.create(address: 'Calle alquilada 4', appraisal: '400000', city: 'Sabaneta', code: 1, market_value: 450000000, neighborhood: 'Aves maria', owner_id: p4.id, phone: '2880421', property_type_id: pt1.id, rental_fee: 400000, stratum: 4)
prop5 = Property.create(address: 'Calle alquilada 5', appraisal: '500000', city: 'Sabaneta', code: 1, market_value: 550000000, neighborhood: 'Aves maria', owner_id: p5.id, phone: '2880421', property_type_id: pt1.id, rental_fee: 500000, stratum: 4)
prop6 = Property.create(address: 'Calle alquilada 6', appraisal: '600000', city: 'Sabaneta', code: 1, market_value: 650000000, neighborhood: 'Aves maria', owner_id: p6.id, phone: '2880421', property_type_id: pt1.id, rental_fee: 600000, stratum: 4)

Contract.delete_all
c1 = Contract.create(code: 1, final_date: '2014-03-26', initial_date: '2013-03-26', lessee_id: p2.id, owner_id: p1.id , pay_day: 1, property_id: prop1.id, rate_commission: 0.1, active: true, interest_rate: 0.05)
c2 = Contract.create(code: 1, final_date: '2014-03-26', initial_date: '2013-03-26', lessee_id: p1.id, owner_id: p2.id , pay_day: 1, property_id: prop2.id, rate_commission: 0.1, active: true, interest_rate: 0.05)
c3 = Contract.create(code: 1, final_date: '2014-03-26', initial_date: '2013-03-26', lessee_id: p3.id, owner_id: p4.id , pay_day: 1, property_id: prop3.id, rate_commission: 0.1, active: true, interest_rate: 0.05)
c4 = Contract.create(code: 1, final_date: '2014-03-26', initial_date: '2013-03-26', lessee_id: p4.id, owner_id: p3.id , pay_day: 1, property_id: prop4.id, rate_commission: 0.1, active: true, interest_rate: 0.05)
c5 = Contract.create(code: 1, final_date: '2014-03-26', initial_date: '2013-03-26', lessee_id: p5.id, owner_id: p1.id , pay_day: 1, property_id: prop5.id, rate_commission: 0.1, active: true, interest_rate: 0.05)
c6 = Contract.create(code: 1, final_date: '2014-03-26', initial_date: '2013-03-26', lessee_id: p5.id, owner_id: p6.id , pay_day: 1, property_id: prop6.id, rate_commission: 0.1, active: true, interest_rate: 0.05)


