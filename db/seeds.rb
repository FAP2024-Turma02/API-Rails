# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create([
  { name: 'Mouse Sem Fio', price: 29.99, photo: '/634182/mouse_sem_fio_logitech_m170_preto_895_1_05564c47a78f0743b27850f5bacb5a1d.jpg', is_promotion: true },
  { name: 'Teclado', price: 49.99, photo: 'er/2022/laminas-html/office/OF01/assets/img/tc270_02_1500x1500.jpg', is_promotion: false },
  { name: 'Monitor 24"', price: 199.99, photo: 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/294985/Monitor-LG-23-8-LED-Full-HD-75Hz-IPS-HDMI-VGA-Freesync-Preto-24mp400-b_1721414917_gg.jpg', is_promotion: true },
  { name: 'Cabo HDMI', price: 14.99, photo: 'https://images.tcdn.com.br/img/img_prod/774024/cabo_de_video_hdmi_x_hdmi_2_0_18gbps_kramer_cabo_hdmi_2_0_ate_4k_60hz_4_4_4_8579_1_20200619090341.jpg', is_promotion: false },
  { name: 'Hub USB', price: 19.99, photo: 'https://cdn.awsli.com.br/2500x2500/1180/1180728/produto/22664427230bfb41f8f.jpg', is_promotion: true }
])