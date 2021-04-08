# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

username_list = ["MikeEClark","FunkyOLips","DrgnGrl4902","crazyandy89","ziggityzack22","thejodotcom","SmarterChild","xXdownWthaClownXx","VioJ72","xX2dopeXx","Roxysurfergurl576","Radskatrboi420","g00dCharlotteLuvr13","limpbizktdude92","BiggidyMike","l1nknprkFn@tk","xXJusbiaXx","pr1nc3ssP3ach473","son1cth3h3dg3","bsbGurl4Eva92","BAD2theB0ne94","Th3Dave77","B1GbadB0bbY89"]
password = 'pass123'

username_list.each_with_index do |username, i|
  User.create( username: username, email: "user-#{i}@example.com", password: password, password_confirmation: password)
end
