# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.destroy_all

Car.create(make: "Jeep", model: "Wrangler", year: 2016, color: "black", price: 300, available: true, image: "https://st.motortrend.com/uploads/sites/10/2015/11/2015-jeep-wrangler-rubicon-suv-angular-front.png")
Car.create(make: "Honda", model: "Acord", year: 2018, color: "blue", price: 250, available: true, image: "https://blogmedia.dealerfire.com/wp-content/uploads/sites/749/2018/11/2019-Honda-Accord-Obsidian-Blue-Pearl_o.png")
Car.create(make: "Toyota", model: "Camry XSE V6", year: 2018, color: "silver", price: 300, available: true, image: "https://65e81151f52e248c552b-fe74cd567ea2f1228f846834bd67571e.ssl.cf1.rackcdn.com/ldm-images/2018-Toyota-Camry-XSE-V6.png")
Car.create(make: "Jaguar", model: "F-Type Coupe", year: 2018, color: "silver", price: 500, available: true, image: "https://static.tcimg.net/vehicles/primary/e98f683cce74e642/2019-Jaguar-F-TYPE-silver-full_color-driver_side_front_quarter.png")
Car.create(make: "Porche", model: "718 Boxer", year: 2018, color: "red", price: 500, available: true, image: "https://crls.io/s/evox%2Fcolor_2400_032_png%2FMY2019%2F13424%2F13424_cc2400_032_0L.png/card/n/porsche-718-boxster.png")
Car.create(make: "Genesis", model: "G70 2.0T", year: 2016, color: "blue", price: 300, available: true, image: "https://c4d709dd302a2586107d-f8305d22c3db1fdd6f8607b49e47a10c.ssl.cf1.rackcdn.com/thumbnails/stock-images/74b9dc2bdafa86b272ad350c6ebcd258.png")
Car.create(make: "Mercedes-Benz", model: "C300 4Matic", year: 2017, color: "silver", price: 300, available: true, image: "https://www.cstatic-images.com/car-pictures/xl/usc70mbcaw2a021001.png")
Car.create(make: "Audi", model: "A4 2.0T Premium", year: 2018, color: "black", price: 300, available: true, image: "https://c4d709dd302a2586107d-f8305d22c3db1fdd6f8607b49e47a10c.ssl.cf1.rackcdn.com/thumbnails/stock-images/eb250a65a1c50da065535fff791b7499.png")
Car.create(make: "Tesla", model: "Model 3", year: 2018, color: "red", price: 350, available: true, image: "https://www.drive-in-motion.com/wp-content/uploads/2019/02/Tesla-Model-3-Preview.png")
Car.create(make: "BMW", model: "330i xDrive", year: 2018, color: "white", price: 350, available: true, image: "https://c4d709dd302a2586107d-f8305d22c3db1fdd6f8607b49e47a10c.ssl.cf1.rackcdn.com/thumbnails/stock-images/23b3e7408fc0983016bc4bead9cd0b5b.png")
