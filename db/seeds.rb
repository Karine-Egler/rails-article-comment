# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Callback environment..."
Comment.destroy_all
Post.destroy_all
User.destroy_all


user1 = User.create!(email: "karine.egler@gmail.com", password:"123456", nickname: "Karine")
user2 = User.create!(email: "valerianpallas@gmail.com", password:"123456", nickname: "Valeria")
user3 = User.create!(email: "rreybaut@gmail.com", password:"123456", nickname: "Raphael")

post = Post.create!(title: "Les consommateurs américains inquiets de l'exploitation de leurs données personnelles", content: "Selon le cabinet d'audit et de conseil KPMG, les Américains sont préoccupés du traitement de leurs données personnelles par les entreprises. Et ils pensent que les cadres dirigeants ne sont peut-être pas suffisamment conscients de cet état de fait.",url: "https://www.lemondeinformatique.fr/actualites/lire-les-consommateurs-americains-inquiets-de-l-exploitation-de-leurs-donnees-personnelles-88963.html",user_id: user1.id)
post.save

post = Post.create!(title: "Les pénuries de composants sont en phase de résolution", content: "La rédaction du Monde Informatique poursuit ses entretiens avec les acteurs IT. Dans ce cadre, nous avons interrogé Cédric Coutat, président de HP France pour évoquer l'actualité du constructeur. Pénurie de composants, adaptation des terminaux au travail hybride, services de sécurité et desktop as a service, ainsi que le développement durable sont au menu de cette discussion.",url: "https://www.lemondeinformatique.fr/actualites/lire-cedric-coutat-president-de-hp-france--les-penuries-de-composants-sont-en-phase-de-resolution-88115.html",user_id: user1.id)
post.save

post = Post.create!(title: "Les consommateurs américains inquiets de l'exploitation de leurs données personnelles", content: "Selon le cabinet d'audit et de conseil KPMG, les Américains sont préoccupés du traitement de leurs données personnelles par les entreprises. Et ils pensent que les cadres dirigeants ne sont peut-être pas suffisamment conscients de cet état de fait.",url: "https://www.lemondeinformatique.fr/actualites/lire-les-consommateurs-americains-inquiets-de-l-exploitation-de-leurs-donnees-personnelles-88963.html",user_id: user1.id)
post.save

post = Post.create!(title: "Les consommateurs américains inquiets de l'exploitation de leurs données personnelles", content: "Selon le cabinet d'audit et de conseil KPMG, les Américains sont préoccupés du traitement de leurs données personnelles par les entreprises. Et ils pensent que les cadres dirigeants ne sont peut-être pas suffisamment conscients de cet état de fait.",url: "https://www.lemondeinformatique.fr/actualites/lire-les-consommateurs-americains-inquiets-de-l-exploitation-de-leurs-donnees-personnelles-88963.html",user_id: user1.id)
post.save
