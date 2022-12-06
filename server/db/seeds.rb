# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating Profiles..."
joe = Profile.create(name: 'Joe', username: 'joe123', passcode: 'pass123',image: 'https://play-lh.googleusercontent.com/VC7rta8PIK3MqmQG5c-F5CNJQ6cCv6Eb-kyBoUcQ2xj83dZVhn7YCj_GIWW8y7TnAMjU=w600-h300-pc0xffffff-pd' )
sam = Profile.create(name: 'Sam', username: 'sam123', passcode: 'pass123', image: 'https://play-lh.googleusercontent.com/VC7rta8PIK3MqmQG5c-F5CNJQ6cCv6Eb-kyBoUcQ2xj83dZVhn7YCj_GIWW8y7TnAMjU=w600-h300-pc0xffffff-pd' )
kate = Profile.create(name: 'Kate', username: 'kate123', passcode: 'pass123', image: 'https://play-lh.googleusercontent.com/VC7rta8PIK3MqmQG5c-F5CNJQ6cCv6Eb-kyBoUcQ2xj83dZVhn7YCj_GIWW8y7TnAMjU=w600-h300-pc0xffffff-pd' )

puts "Creating Gifts..."
iphone = Gift.create(name: 'Iphone', price: 700, image: 'https://www.apple.com/v/iphone-14/c/images/overview/selfies/selfie_startframe__ex2suisayck2_large.jpg')
giftcard = Gift.create(name: 'Giftcard', price: 25, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyXHwOwz3PMHxZSNH9wg2w1vAQjd4FicmB_1tR__glcxTxp4Z07iPOVwbqzkyr-6qTweA&usqp=CAU')
shoes = Gift.create(name: 'Shoes', price: 100, image: 'https://cdn.shopify.com/s/files/1/2358/2817/products/air-jordan-4-retro-fire-red-2020-193982.png?v=1638813158')
woody = Gift.create(name: 'Woody', price: 30, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBM4L6zad7w4E-1oCC_AwpB1Qlt8_u0-RePA&usqp=CAU')

puts "Creating Gift Details..."
GiftDetail.create(gift: iphone, detail: 'Iphone 14')
GiftDetail.create(gift: iphone, detail: 'Black')
GiftDetail.create(gift: iphone, detail: '128 GB')
GiftDetail.create(gift: giftcard, detail: 'Walmart Gift Card')
GiftDetail.create(gift: giftcard, detail: 'Red')
GiftDetail.create(gift: shoes, detail: 'Size 10')
GiftDetail.create(gift: shoes, detail: 'Air Jordans Retro')
GiftDetail.create(gift: shoes, detail: 'Red')
GiftDetail.create(gift: woody, detail: 'Toy')
GiftDetail.create(gift: woody, detail: 'Small')

puts "Creating Rates..."
r1 = Rate.create(profile: joe, gift: iphone, rate: 4)
r2 = Rate.create(profile: joe, gift: woody, rate: 3)
r3 = Rate.create(profile: sam, gift: giftcard, rate: 5)
r4 = Rate.create(profile: sam, gift: shoes, rate: 2)
r5 = Rate.create(profile: kate, gift: shoes, rate: 4)

puts "Creating Wishlist..."
w1 = Wishlist.create(profile: joe, gift: iphone)
w2 = Wishlist.create(profile: joe, gift: woody)

