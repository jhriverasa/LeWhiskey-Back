# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    @user = User.create(name: "Jhonatan R. Saumeth", cc: "1016046999", username: "jhriverasa", password: "passfacil")
    @product = Product.create(name: "Cerveza Corona - 355ml", prodtype: 1 , discount: 0, buyprice: 3500, sellprice: 38000, soldprice: 38000, issold: "yes", description: "Cerveza mexicana 4.5% Alcohol")
#  @invoice = Invoice.create(user_id: 1, clientname:"cliente", waitername:"mesero", middlemanname:"comisionista", iva: 0, service: 14400, subtotal: 76000, total: 90400, date: "2019-08-14", time: "19:13:15", waytopay: "Credit Card", description: "descripcion")