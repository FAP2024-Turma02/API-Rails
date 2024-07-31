# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Info.delete_all
Product.delete_all

Info.create({name: 'Tech Haven',color: '#00FF00',owner: 'Alice Johnson',department: 'Electronics'})

Product.create({
                 photo: 'https://a-static.mlcdn.com.br/1500x1500/laptop-da-xuxa-musical-bilingue-60-atividades-candide-xuxa/toymania/49653/865a1854cc89aba5e1ba82fe75d8c4ee.jpg',
                 name: 'Laptop Gamer',
                 price: 2500.00,
                 is_promotion: true
               })

Product.create({
                 photo: 'https://m.media-amazon.com/images/I/61JCursHF6L._AC_SL1020_.jpg',
                 name: 'Mouse Wireless',
                 price: 150.00,
                 is_promotion: false
               })

Product.create({
                 photo: 'https://i5.walmartimages.com/asr/b80bd9ce-e308-4184-96a8-cab95442b5ef_1.501f5f94e610cbe51ee7ab0155fa276c.jpeg',
                 name: 'Teclado Mecânico',
                 price: 300.00,
                 is_promotion: true
               })

Product.create({
                 photo: 'https://i.ebayimg.com/images/g/P7sAAOSwFVBfNAuW/s-l225.jpg',
                 name: 'Monitor 4K',
                 price: 1200.00,
                 is_promotion: false
               })

Product.create({
                 photo: 'https://i5.walmartimages.com/asr/b1d86aa3-24cc-4f43-98dc-964f7e9c46f7_1.e11391d810970994d1893676396c3827.jpeg',
                 name: 'Fone de Ouvido Bluetooth',
                 price: 400.00,
                 is_promotion: true
               })

Product.create({
                 photo: 'https://1.bp.blogspot.com/-H_WEfy371nc/XWFA0j-KTII/AAAAAAACvkY/_npzNkUtbaIEELNcFPZBzKO2nyj2USUMgCLcBGAs/s1600/camerasdevigilancia.jpg',
                 name: 'Webcam HD',
                 price: 250.00,
                 is_promotion: false
               })

puts 'seeding complete!'
