# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Mike
mike = User.create(email:"mike@gmail.com",username:"mike")
m1 = Portfolio.create(user_id:mike.id,title:"mike's portfolio")
m2 = Portfolio.create(user_id:mike.id,title:"mike's 2nd portfolio")
m3 = Portfolio.create(user_id:mike.id,title:"mike's 3rd portfolio")
Stock.create(portfolio_id:m1.id,symbol:"AAPL",purchase_price:134.33,quantity:30,remaining:30)
Stock.create(portfolio_id:m2.id,symbol:"MSFT",purchase_price:186.63,quantity:40,remaining:40)
Stock.create(portfolio_id:m3.id,symbol:"TSLA",purchase_price:436.00,quantity:50,remaining:50)

# Tessa
tessa = User.create(email:"tessa@gmail.com",username:"tessa")
t1 = Portfolio.create(user_id:tessa.id,title:"tessa's portfolio")
t2 = Portfolio.create(user_id:tessa.id,title:"tessa's 2nd portfolio")
Stock.create(portfolio_id:t1.id,symbol:"AAPL",purchase_price:264.39,quantity:200,remaining:200)
Stock.create(portfolio_id:t2.id,symbol:"MSFT",purchase_price:389.61,quantity:100,remaining:100)

# Billy
billy = User.create(email:"billy@gmail.com",username:"billy")
b1 = Portfolio.create(user_id:billy.id,title:"billy's portfolio")
Stock.create(portfolio_id:b1.id,symbol:"EEXO",purchase_price:452.86,quantity:1000,remaining:1000)

# Gertrude
gertrude = User.create(email:"gertrude@gmail.com",username:"gertrude")
g1 = Portfolio.create(user_id:gertrude.id,title:"gertrude's portfolio")
Stock.create(portfolio_id:g1.id,symbol:"RESU",purchase_price:887.02,quantity:300,remaining:300)

# Joe
joe = User.create(email:"joe@gmail.com",username:"joe")
j1 = Portfolio.create(user_id:joe.id,title:"joe's portfolio")
Stock.create(portfolio_id:j1.id,symbol:"QWTR",purchase_price:80.08,quantity:3000,remaining:3000)

# Harry
harry = User.create(email:"harry@gmail.com",username:"harry")
h1 = Portfolio.create(user_id:harry.id,title:"harry's portfolio")
Stock.create(portfolio_id:h1.id,symbol:"QQPL",purchase_price:774.00,quantity:2050,remaining:2050)
