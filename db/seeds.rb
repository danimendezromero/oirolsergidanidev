# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create()
zona1 = Zona.create(nom: "Tierra", clima: "caliente", temperatura: 29, humitat: 70)
zona2 = Zona.create(nom: "Agua", clima: "frio", temperatura: 5, humitat: 90)
zona3 = Zona.create(nom: "Aire", clima: "templado", temperatura: 18, humitat: 40)
zona4 = Zona.create(nom: "Planta", clima: "natural", temperatura: 23, humitat: 60)



Animal.create(nom: "Mono", foto: "", raza: "mono tipo normal", zona: zona1, any_naixement: Date.parse('1-1-2010'), user: user1)
Animal.create(nom: "Mono1", foto: "", raza: "mono tipo agua", zona: zona2, any_naixement: Date.parse('2-2-2010'), user: user1)
Animal.create(nom: "Mono2", foto: "", raza: "mono tipo hada", zona: zona3, any_naixement: Date.parse('3-3-2010'), user: user1)
Animal.create(nom: "Mono3", foto: "", raza: "mono tipo fuego", zona: zona1, any_naixement: Date.parse('4-4-2010'), user: user1)
Animal.create(nom: "Mono4", foto: "", raza: "mono tipo planta", zona: zona4, any_naixement: Date.parse('5-5-2010'), user: user1)
Animal.create(nom: "Mono5", foto: "", raza: "mono tipo dragon", zona: zona2, any_naixement: Date.parse('6-6-2010'), user: user1)
Animal.create(nom: "Mono6", foto: "", raza: "mono tipo lucha", zona: zona4, any_naixement: Date.parse('7-7-2010'), user: user1)
Animal.create(nom: "Mono7", foto: "", raza: "mono tipo aire", zona: zona3, any_naixement: Date.parse('8-8-2010'), user: user1)
Animal.create(nom: "Mono8", foto: "", raza: "mono tipo siniestro", zona: zona1, any_naixement: Date.parse('9-9-2010'), user: user1)
Animal.create(nom: "Mono9", foto: "", raza: "mono tipo hierro", zona: zona2, any_naixement: Date.parse('10-10-2010'), user: user1)
Animal.create(nom: "Mono10", foto: "", raza: "mono tipo piedra", zona: zona3, any_naixement: Date.parse('11-11-2010'), user: user1)
Animal.create(nom: "Mono11", foto: "", raza: "mono tipo tierra", zona: zona4, any_naixement: Date.parse('12-12-2010'), user: user1)
