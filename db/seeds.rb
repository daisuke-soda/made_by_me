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
    }
  ]
  )
