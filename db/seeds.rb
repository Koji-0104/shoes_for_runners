# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do |n|
  Shoe.create!(
    name: "テストシューズ#{n + 1}",
    url: "https://hb.afl.rakuten.co.jp/ichiba/247897ef.7a7fceb1.247897f0.a861c831/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsportsauthority%2F65899247%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJkb3duIiwiY29tIjoxLCJjb21wIjoiZG93biIsInByaWNlIjowLCJib3IiOjEsImNvbCI6MCwiYmJ0biI6MCwicHJvZCI6MCwiYW1wIjpmYWxzZX0%3D",
    img_url: "https://hbb.afl.rakuten.co.jp/hgb/247897ef.7a7fceb1.247897f0.a861c831/?me_id=1271197&item_id=10403197&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsportsauthority%2Fcabinet%2Fimg%2F1430%2F65899247.jpg%3F_ex%3D240x240&s=240x240&t=pict",
  )
end