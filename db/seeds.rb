# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create(name: "Champagne Dom Perignon Brut", price: 34820, photo: "https://http2.mlstatic.com/D_NQ_NP_2X_973962-MLB74227295085_012024-F.webp", is_promotion: true)

Product.create(name: "Queijo Winnimere", price: 280, photo: "https://i0.wp.com/top10mais.org/wp-content/uploads/2016/08/Winnimere-entre-os-queijos-mais-caros-do-mundo.jpg", is_promotion: true)

Product.create(name: "Salame Italiano Toscano Finocchiona", price: 195, photo: "https://charcutaria.org/wp-content/uploads/2017/06/P1010261.jpg", is_promotion: true)

Product.create(name: "Azeitonas Pretas Colossais Grega Olymp", price: 43, photo: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQkOTB7Y0rOwcTkMW_F7hQtegko8wOfiJ1Ia9ttuR9irSmPpP1kh-ETEXHhP89keUtO8W3UKES2T-sTUfeJK6evz8QJQBGUutO21SeB2QLplgUzsc1lhHs2MA&usqp=CAE", is_promotion: false)

Product.create(name: "Pão Italiano Recheado", price: 65, photo: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSCgPKJMmMlKPWyTYZVqjGQ6H28UlYkQIaXnN7Iz1oPH98LPaG1yX9z98OaOdWzKVXPjex7VJhHIORHZyJS_WIPy5A8Gx7-C0GjSIvzjKxf&usqp=CAE", is_promotion: false)
