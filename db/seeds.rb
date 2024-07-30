# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

products = [
  {
    name: "Smart TV",
    price: 1299.99,
    photo: "https://example.com/smarttv.jpg",
    is_promotion: true,
    os_type: nil,
    voltage: true,
    type: "Eletronic"
  },
  {
    name: "Windows 10 Pro",
    price: 199.99,
    photo: "https://example.com/windows10pro.jpg",
    is_promotion: false,
    os_type: "Windows",
    voltage: nil,
    type: "OperatigSystem"
  },
  {
    name: "Gabinete",
    price: 179.9,
    photo: "https://static.mundomax.com.br/produtos/80693/100/1.webp",
    is_promotion: false,
    os_type: nil,
    voltage: nil,
    type: nil
  },
  {
    name: "Fone de ouvido BT",
    price: 259.9,
    photo: "https://dtzhc0rw447zs.cloudfront.net/Custom/Content/Products/02/60/0260_xbuddy-l-995810261843_m2_637475346110351518.jpg",
    is_promotion: false,
    os_type: nil,
    voltage: false,
    type: "Eletronic"
  },
  {
    name: "Carregador",
    price: 139.9,
    photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8q09H2vMIBGvAXreyCwPTZ1s8F55Fvw8kQ&s",
    is_promotion: false,
    os_type: nil,
    voltage: true,
    type: "Eletronic"
  },
  {
    name: "Caixa de som",
    price: 99.9,
    photo: "https://acdn.mitiendanube.com/stores/001/239/875/products/3731_7ae2bf5d-49e8-4966-a52d-ea0ae510d383_1200x1200-deb9796ac936dd43f216328504414269-640-0.png",
    is_promotion: true,
    os_type: nil,
    voltage: false,
    type: "Eletronic"
  },
  {
    name: "Celular",
    price: 27.5,
    photo: "",
    is_promotion: false,
    os_type: nil,
    voltage: true,
    type: "Eletronic"
  }
]

products.each do |product|
  Product.create!(product)
end
