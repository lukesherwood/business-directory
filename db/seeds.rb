# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

business1 = Business.create(name: "Cloud Optik", state: "CO", website: "https://www.cloudoptik.com", founded_date:"01/01/2016")
business2 = Business.create(name: "Visible", state: "CA", website: "https://www.visible.com", founded_date:"10/01/2018")
business3 = Business.create(name: "Verizon", state: "NY", website: "https://www.verizon.com", founded_date:"04/01/1962")
business4 = Business.create(name: "T-Mobile", state: "NY", website: "https://www.T-mobile.com", founded_date:"09/01/1987")
