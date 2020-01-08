# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all

Player.create world_ranking: 1, name: 'Rafael Nadal' , age: 33, country: 'Spain', prize_money: 119_601_561, titles: 84, image: 'https://cdn.cnn.com/cnnnext/dam/assets/190908221015-nadal-trophy-exlarge-169.jpg'

Player.create world_ranking: 2, name: 'Novak Djokovic' , age: 32, country: 'Serbia', prize_money: 139_144_944, titles: 77, image: 'https://cdn.images.express.co.uk/img/dynamic/72/590x/Novak-Djokovic-Wimbledon-989238.jpg?r=1532500530889'

Player.create world_ranking: 3, name: 'Roger Federer' , age: 38, country: 'Switzerland', prize_money: 129_231_891, titles: 103, image: 'https://cdn.theatlantic.com/assets/media/img/mt/2017/07/RTX3BPR8/lead_720_405.jpg?mod=1533691895'

Player.create world_ranking: 4, name: 'Dominic Thiem' , age: 26, country: 'Austria', prize_money: 22_132_368, titles: 16, image: 'https://cdn.images.express.co.uk/img/dynamic/72/590x/Dominic-Thiem-1120123.jpg?r=1556471644923'

Player.create world_ranking: 4, name: 'Danil Medvedev' , age: 23, country: 'Russia', prize_money: 10_507_693, titles: 7, image: 'https://www.atptour.com/en/news/www.atptour.com/-/media/images/news/2019/10/13/10/46/medvedev-shanghai-2019-final-trophy.jpg'
