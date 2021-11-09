# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

santander = Bank.create(name: 'Banco Santander')

chile = Bank.create(name: 'Banco de Chile')

['Vitacura 4325 - Vitacura', 'Av. Presidente Riesco 5561 Of. 203 P.2 - Las Condes', 'Agustinas N° 1070 P. 6 Of. 52 Stgo. Centro'].each do |bs|
  santander.bank_subsidiaries.create(address: bs)
end

['Av. Presidente Riesco 5711 L/1,LAS CONDES', 'Av. Nueva Los Leones 017,PROVIDENCIA'].each do |bs|
  chile.bank_subsidiaries.create(address: bs)
end