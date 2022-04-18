# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!( email: "admin@example.com", name: "admin", password:"Yy81050482101041995",password_confirmation:"Yy81050482101041995", role:1)


#ミズノ

Shoe.create!(
  name: "ウエーブスカイライズ2   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a02b2c.ebc0d4bc.26a02b2d.20b472e2/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsportsx%2Fj1gc210953%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a02b2c.ebc0d4bc.26a02b2d.20b472e2/?me_id=1212891&item_id=10037687&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsportsx%2Fcabinet%2F2021%2F06%2Fj1gc210953_1.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "mizuno",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "ウエーブインスパイア17   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a197a0.437dd139.26a197a1.05ca788d/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmizunoshop%2Fj1gc214410%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a197a0.437dd139.26a197a1.05ca788d/?me_id=1313488&item_id=10142679&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmizunoshop%2Fcabinet%2Fgoods%2F1132%2Fsh_j1gc214410.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "mizuno",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "ウエーブエアロ19   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a02b2c.ebc0d4bc.26a02b2d.20b472e2/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsportsx%2Fj1ga213773%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a02b2c.ebc0d4bc.26a02b2d.20b472e2/?me_id=1212891&item_id=10035844&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsportsx%2Fcabinet%2F2021%2F01%2Fj1ga213773_5.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "mizuno",
  level: "advanced",
  user_id: 1
)

Shoe.create!(
  name: "ウエーブライダー 25   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F107799001011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=21022167&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7910301_2%2F7799001_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "mizuno",
  level: "beginner",
  user_id: 1
)

Shoe.create!(
  name: "ウエーブシャドウ5   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F207799010011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=21015196&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7910301%2F7799010_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "mizuno",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "ウエーブエンペラージャパン４   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a1852a.f8304fd8.26a1852b.3f5360c3/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fauc-athlete1%2Fu1gd192018%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a1852a.f8304fd8.26a1852b.3f5360c3/?me_id=1235526&item_id=10011848&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fauc-athlete1%2Fcabinet%2Fmizunotf%2Fu1gd192018.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "mizuno",
  level: "advanced",
  user_id: 1
)


Shoe.create!(
  name: "ウエーブスカイ3 レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a197a0.437dd139.26a197a1.05ca788d/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmizunoshop%2Fj1gd190259%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a197a0.437dd139.26a197a1.05ca788d/?me_id=1313488&item_id=10127665&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmizunoshop%2Fcabinet%2Fgoods%2F1042%2Fsh_j1gd190259.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "mizuno",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "ウエーブインスパイア16   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a197a0.437dd139.26a197a1.05ca788d/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmizunoshop%2Fj1gd204422%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a197a0.437dd139.26a197a1.05ca788d/?me_id=1313488&item_id=10127670&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmizunoshop%2Fcabinet%2Fgoods%2F1042%2Fsh_j1gd204422.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "mizuno",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "ウエーブエアロ19   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a197a0.437dd139.26a197a1.05ca788d/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmizunoshop%2Fj1gb213727%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a197a0.437dd139.26a197a1.05ca788d/?me_id=1313488&item_id=10135913&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmizunoshop%2Fcabinet%2Fgoods%2F1094%2Fsh_j1gb213727.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "mizuno",
  level: "advanced",
  user_id: 1
)

Shoe.create!(
  name: "ウエーブライダー 25   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F107799022011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=21022164&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7920301_23%2F7799022_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "mizuno",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "ウエーブシャドウ5   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F207799027011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=21015188&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7920301%2F7799027_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "mizuno",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "ウエーブエンペラージャパン４   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F107953297011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=21051226&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7910101%2F7953297_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "mizuno",
  level: "advanced",
  user_id: 1
)


#アシックス

Shoe.create!(
  name: "ゲルカヤノ 28   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a093ea.37b3b83d.26a093eb.71116565/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fspotaka%2F1011b189-004%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a093ea.37b3b83d.26a093eb.71116565/?me_id=1191317&item_id=10213697&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fspotaka%2Fcabinet%2Fitem31%2F1011b189-004.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "asics",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "GT2000 -10   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26bd3d40.00af336a.26bd3d41.6eeb1250/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fohzone%2F1011a160%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26bd3d40.00af336a.26bd3d41.6eeb1250/?me_id=1344161&item_id=10000819&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fohzone%2Fcabinet%2F07922162%2F07509496%2Fimgrc0184245203.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "asics",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "ライトレーサー３   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/24a904e5.d4a2e240.24a904e6.933bfe54/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Falpen%2F4305610211%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/24a904e5.d4a2e240.24a904e6.933bfe54/?me_id=1207922&item_id=10358297&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Falpen%2Fcabinet%2Fimg%2F317%2F4305610211_6.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "asics",
  level: "advanced",
  user_id: 1
)

Shoe.create!(
  name: "グライドライド2   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/24a904e5.d4a2e240.24a904e6.933bfe54/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Falpen%2F4302610011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/24a904e5.d4a2e240.24a904e6.933bfe54/?me_id=1207922&item_id=10354424&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Falpen%2Fcabinet%2Fimg%2F301%2F4302610011_7.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "asics",
  level: "beginner",
  user_id: 1
)

Shoe.create!(
  name: "GEL-DS TRAINER 26   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a10f5b.4ac98cc0.26a10f5c.429c74b3/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fflight-sports%2F1011b240-300%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a10f5b.4ac98cc0.26a10f5c.429c74b3/?me_id=1233853&item_id=10035337&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fflight-sports%2Fcabinet%2F00557351%2Fimgrc0087842584.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "asics",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "MAGIC SPEED   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a10f5b.4ac98cc0.26a10f5c.429c74b3/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fflight-sports%2F1011b026-001%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a10f5b.4ac98cc0.26a10f5c.429c74b3/?me_id=1233853&item_id=10035866&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fflight-sports%2Fcabinet%2F00557351%2Fimgrc0088912588.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "asics",
  level: "advanced",
  user_id: 1
)


Shoe.create!(
  name: "ゲルカヤノ28   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/24a904e5.d4a2e240.24a904e6.933bfe54/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Falpen%2F4308615221%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/24a904e5.d4a2e240.24a904e6.933bfe54/?me_id=1207922&item_id=10371249&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Falpen%2Fcabinet%2Fimg%2F362%2F4308615221_7.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "asics",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "GT2000 -9   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/247897ef.7a7fceb1.247897f0.a861c831/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsportsauthority%2F65899973%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/247897ef.7a7fceb1.247897f0.a861c831/?me_id=1271197&item_id=10403203&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsportsauthority%2Fcabinet%2Fimg%2F1431%2F65899973.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "asics",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "ライトレーサー３   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F107647945011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=11830484&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7920201_46%2F7647945_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "asics",
  level: "advanced",
  user_id: 1
)

Shoe.create!(
  name: "グライドライド2   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F107651185011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=16320857&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7920301_86%2F7651185_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "asics",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "GEL-DS TRAINER 25   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/24a904e5.d4a2e240.24a904e6.933bfe54/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Falpen%2F4302619311%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/24a904e5.d4a2e240.24a904e6.933bfe54/?me_id=1207922&item_id=10370084&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Falpen%2Fcabinet%2Fimg%2F358%2F4302619311_7.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "asics",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "MAGIC SPEED   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F207654038011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=19629909&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7920201%2F7654038_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "asics",
  level: "advanced",
  user_id: 1
)


#ナイキ

Shoe.create!(
  name: "ズームストラクチャー24   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a02b2c.ebc0d4bc.26a02b2d.20b472e2/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsportsx%2Fda8535-001%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a02b2c.ebc0d4bc.26a02b2d.20b472e2/?me_id=1212891&item_id=10038135&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsportsx%2Fcabinet%2F2021%2F07%2Fda8535-001_1.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "nike",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "ズームライバル フライ 3   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F107942709011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=21044474&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7910201_5%2F7942709_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "nike",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "ズームペガサス 38   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/247897ef.7a7fceb1.247897f0.a861c831/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsportsauthority%2F67045591%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/247897ef.7a7fceb1.247897f0.a861c831/?me_id=1271197&item_id=10434988&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsportsauthority%2Fcabinet%2Fimg%2F1482%2F67045591.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "nike",
  level: "advanced",
  user_id: 1
)

Shoe.create!(
  name: "ズームフライ4   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a043d4.a37b43ee.26a043d5.477b9a4e/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fabcmartsports%2F6296310001%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a043d4.a37b43ee.26a043d5.477b9a4e/?me_id=1284242&item_id=10109830&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fabcmartsports%2Fcabinet%2Fitem-image141%2F6296310001048.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "nike",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "インフィニティラン フライニット2   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a06e38.13582ad2.26a06e3a.ceff88e0/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fhoophouse%2Fct2357002%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a06e38.13582ad2.26a06e3a.ceff88e0/?me_id=1305258&item_id=10019478&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fhoophouse%2Fcabinet%2Fgoq003%2F58115_1.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "nike",
  level: "beginner",
  user_id: 1
)

Shoe.create!(
  name: "ヴェイパーフライ ネクスト％ 2   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/24a8dfb6.cea645d1.24a8dfb7.f26b6c10/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fshoesnuts%2Fcu4111-102n01%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/24a8dfb6.cea645d1.24a8dfb7.f26b6c10/?me_id=1385710&item_id=10006824&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fshoesnuts%2Fcabinet%2Fnike202201%2Fcu4111-102m01.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "nike",
  level: "advanced",
  user_id: 1
)

Shoe.create!(
  name: "インフィニティラン フライニット2   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a06b11.20f8a9df.26a06b12.e058d008/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fyakyu-kasukawa%2Fho-ct2423-500%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a06b11.20f8a9df.26a06b12.e058d008/?me_id=1210102&item_id=10369462&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fyakyu-kasukawa%2Fcabinet%2F00c%2Fho-ct2423-500_1.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "nike",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "ズームライバル フライ3   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a05c85.7d5e7995.26a05c86.5f7fc72b/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fhimaraya%2F0000001026713%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a05c85.7d5e7995.26a05c86.5f7fc72b/?me_id=1264309&item_id=10493873&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fhimaraya%2Fcabinet%2F0000001026d%2F0000001026713_r1_01.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "nike",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "ズームペガサス 38   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a05c85.7d5e7995.26a05c86.5f7fc72b/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fhimaraya%2F0000000985353%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a05c85.7d5e7995.26a05c86.5f7fc72b/?me_id=1264309&item_id=10475958&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fhimaraya%2Fcabinet%2F0000000985b%2F0000000985353_r1_01.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "nike",
  level: "advanced",
  user_id: 1
)

Shoe.create!(
  name: "ズームストラクチャー24   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/247897ef.7a7fceb1.247897f0.a861c831/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsportsauthority%2F67046896%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/247897ef.7a7fceb1.247897f0.a861c831/?me_id=1271197&item_id=10431101&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsportsauthority%2Fcabinet%2Fimg%2F1476%2F67046896.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "nike",
  level: "beginner",
  user_id: 1
)

Shoe.create!(
  name: "ズームフライ4   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a039af.bc5e6030.26a039b0.b4b0f2a6/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsasakura%2Fhon-ct2401%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a039af.bc5e6030.26a039b0.b4b0f2a6/?me_id=1262139&item_id=10185010&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsasakura%2Fcabinet%2Fhon%2Fsoc2%2Fsoc3%2Fct2401-501z.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "nike",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "ヴェイパーフライ ネクスト％ 2   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/24a8dfb6.cea645d1.24a8dfb7.f26b6c10/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fshoesnuts%2Fdj5458-100m01%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/24a8dfb6.cea645d1.24a8dfb7.f26b6c10/?me_id=1385710&item_id=10002274&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fshoesnuts%2Fcabinet%2Fnike202107%2Fdj5458-100m01.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "nike",
  level: "advanced",
  user_id: 1
)



#アディダス

Shoe.create!(
  name: "ウルトラブースト21   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26bd6c07.0a0bf434.26bd6c08.fa8b79a2/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsize-online%2Ffy0378%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26bd6c07.0a0bf434.26bd6c08.fa8b79a2/?me_id=1262749&item_id=10243527&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsize-online%2Fcabinet%2Fadidas09%2Ffy0378.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "adidas",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "アディゼロ RC4   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26bad998.1c102296.26bad999.9fc98295/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Flocondo%2Fad381bm65657%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26bad998.1c102296.26bad999.9fc98295/?me_id=1313391&item_id=12052741&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Flocondo%2Fcabinet%2Fcommodity%2F6847%2Fad381bm65657_1.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "adidas",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "アディゼロ ボストン 10   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F107961996011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=21039419&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7910301_97%2F7961996_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "jogging",
  maker: "adidas",
  level: "advanced",
  user_id: 1
)

Shoe.create!(
  name: "ソーラーブースト4   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26baf485.57ae24a6.26baf486.f3fb82c1/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fesports%2F9958040092674%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26baf485.57ae24a6.26baf486.f3fb82c1/?me_id=1192233&item_id=11507556&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fesports%2Fcabinet%2F9958-49%2F9958040092674.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "adidas",
  level: "beginner",
  user_id: 1
)

Shoe.create!(
  name: "アディゼロ ジャパン 6   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F107961995011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=21039430&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7910301_96%2F7961995_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "adidas",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "アディオス プロ 2   メンズ",
  url: "https://hb.afl.rakuten.co.jp/ichiba/24a90457.b4d63293.24a90458.408fb8ff/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fstep-sports%2Fadiospro-m%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/24a90457.b4d63293.24a90458.408fb8ff/?me_id=1270435&item_id=10088680&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fstep-sports%2Fcabinet%2F08623964%2Fimgrc0078638011.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "man",
  purpose: "racing",
  maker: "adidas",
  level: "advanced",
  user_id: 1
)


Shoe.create!(
  name: "ウルトラブースト21   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26bd6c07.0a0bf434.26bd6c08.fa8b79a2/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsize-online%2Ffy0378%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26bd6c07.0a0bf434.26bd6c08.fa8b79a2/?me_id=1262749&item_id=10243527&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsize-online%2Fcabinet%2Fadidas09%2Ffy0378.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "adidas",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "アディゼロ RC4   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26bdb0ea.c04a7f34.26bdb0eb.7155d3c0/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsports-bazaar%2Fs-70adi-gx8156%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26bdb0ea.c04a7f34.26bdb0eb.7155d3c0/?me_id=1261721&item_id=10331692&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsports-bazaar%2Fcabinet%2Fspopia-87%2Fs-70adi-gx8156_1.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "adidas",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "アディゼロ ボストン 10   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a052ea.0b2ad95d.26a052eb.dc0be417/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fsupersportsxebio%2F107962001011%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26a052ea.0b2ad95d.26a052eb.dc0be417/?me_id=1273157&item_id=21039433&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsupersportsxebio%2Fcabinet%2F1%2F7920301_2%2F7962001_m.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "jogging",
  maker: "adidas",
  level: "advanced",
  user_id: 1
)

Shoe.create!(
  name: "ソーラーブースト4   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26baf485.57ae24a6.26baf486.f3fb82c1/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fesports%2F9958040092674%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26baf485.57ae24a6.26baf486.f3fb82c1/?me_id=1192233&item_id=11507556&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fesports%2Fcabinet%2F9958-49%2F9958040092674.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "adidas",
  level: "beginner",
  user_id: 1
)


Shoe.create!(
  name: "アディゼロ ジャパン 6   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/26a05c85.7d5e7995.26a05c86.5f7fc72b/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fhimaraya%2F0000001025629%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/26bd6c07.0a0bf434.26bd6c08.fa8b79a2/?me_id=1262749&item_id=10243527&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fsize-online%2Fcabinet%2Fadidas09%2Ffy0378.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "adidas",
  level: "intermediate",
  user_id: 1
)

Shoe.create!(
  name: "アディオスプロ2   レディース",
  url: "https://hb.afl.rakuten.co.jp/ichiba/24a90457.b4d63293.24a90458.408fb8ff/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fstep-sports%2Fadiospro-m%2F&link_type=pict&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0Iiwic2l6ZSI6IjMwMHgzMDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjAsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9",
  img_url: "https://hbb.afl.rakuten.co.jp/hgb/24a90457.b4d63293.24a90458.408fb8ff/?me_id=1270435&item_id=10088680&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fstep-sports%2Fcabinet%2F08623964%2Fimgrc0078638011.jpg%3F_ex%3D300x300&s=300x300&t=pict",
  gender: "woman",
  purpose: "racing",
  maker: "adidas",
  level: "advanced",
  user_id: 1
)
