# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: 'made@com',
  password: 'madebyme'
)

Genre.create!(
  [
    {
      name: "壁・床",
    },
    {
      name: "ドア・窓",
    },
    {
      name: "キッチン",
    },
    {
      name: "バス・トイレ",
    },
    {
      name: "家具・照明",
    },
    {
      name: "庭・エクステリア",
    },
    {
      name: "雑貨・小物",
    },
    {
      name: "その他",
    },
  ]
)
User.create!(
  [
    { name: 'naoki', email: 'naoki@com', password: "111111", profile_image: open("./db/seeds_images/icon1.jpg") },
    { name: 'saki', email: 'saki@com', password: "222222", profile_image: open("./db/seeds_images/icon2.jpg") },
    { name: 'あかりん', email: 'akarin@com', password: "333333", profile_image: open("./db/seeds_images/icon3.jpg") },
    { name: 'たく', email: 'taku@com', password: "444444", profile_image: open("./db/seeds_images/icon4.jpg") },
    { name: 'YOSHI', email: 'yoshi@com', password: "555555", profile_image: open("./db/seeds_images/icon5.jpg") },
    { name: 'DAIKI', email: 'daiki@com', password: "666666", profile_image: open("./db/seeds_images/icon6.jpg") },
    { name: 'teru', email: 'teru@com', password: "777777", profile_image: open("./db/seeds_images/icon7.jpg") },
  ]
)
