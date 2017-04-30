# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create(name: '音楽系')
Genre.create(name: 'スポーツ系')
Genre.create(name: 'イベント系')
Genre.create(name: 'その他')
Kind.create(name:'公式')
Kind.create(name:'非公式')
Kind.create(name:'部活')

Neet.create(name: 'ゆうと',prof_pic: 'yuto.jpg')
Neet.create(name: 'さとし',prof_pic: 'satoshi.jpg')
Neet.create(name: 'ゆうき',prof_pic: 'yuuki.jpg')
Neet.create(name: 'あつし',prof_pic: 'atushi.jpg')
Neet.create(name: 'さくらい',prof_pic: 'sakuthin.jpg')

NeetProf.create(top_pic: 'yuto_top.png', sub_pic1: 'yuto_hoby1.png', sub_pic2: 'yuto_hoby2.png',
hoby: '音楽鑑賞、サッカー', intraction: '情報工学科　山崎賢人です。1994年9月7日生まれ。東京生まれです。
    血液型はA型で星座はおとめ座、身長は178センチです。', goal: '黒王子になりたい！！！！',name: '山崎賢人', janru: 'デザイナー' )


 