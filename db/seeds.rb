# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Theme.create([{id: 1, name: 'Vie'}, {id: 2, name: 'Age'}, {id: 3, name: 'Mort'}, {id: 4, name: 'Alimentation'}, {id: 5, name: 'Aliment'}, {id: 6, name: 'Jeu'}, {id: 7, name: 'Sport'}, {id: 8, name: 'Commerce'}, {id: 9, name: 'Argent'}, {id: 10, name: 'Economie'}, {id: 11, name: 'Entreprise'}, {id: 12, name: 'Possession'}, {id: 13, name: 'Communication'}, {id: 14, name: 'Langage'}, {id: 15, name: 'Ecriture'}, {id: 16, name: 'Informer'}, {id: 17, name: 'Télécommunications'}, {id: 18, name: 'Internet'}, {id: 19, name: 'Nom'}, {id: 20, name: 'Mouvement'}, {id: 21, name: 'Déplacement'}, {id: 22, name: 'Transports'}, {id: 23, name: 'Bateau'}, {id: 24, name: 'Automobile'}, {id: 25, name: 'Train'}, {id: 26, name: 'Avion'}, {id: 27, name: 'Deux-Roues'}, {id: 28, name: 'Corps'}, {id: 29, name: 'Organe'}, {id: 30, name: 'Santé'}, {id: 31, name: 'Hygiène'}, {id: 32, name: 'Sommeil'}, {id: 33, name: 'Position'}, {id: 34, name: 'Sexualité'}, {id: 35, name: 'Techniques'}, {id: 36, name: 'Instruments'}, {id: 37, name: 'Ordinateurs'}, {id: 38, name: 'Animal'}, {id: 39, name: 'Invertebré'}, {id: 40, name: 'Vertebré'}, {id: 41, name: 'Plante'}, {id: 42, name: 'Pouvoir'}, {id: 43, name: 'Politique'}, {id: 44, name: 'Pays'}, {id: 45, name: 'Justice'}, {id: 46, name: 'Securité'}, {id: 47, name: 'Militaire'}, {id: 48, name: 'Famille'}, {id: 49, name: 'Mariage'}, {id: 50, name: 'Matière'}, {id: 51, name: 'Atome'}, {id: 52, name: 'Dechet'}, {id: 53, name: 'Feu'}, {id: 54, name: 'Eau'}, {id: 55, name: 'Force'}, {id: 56, name: 'Edifice'}, {id: 57, name: 'Ville'}, {id: 58, name: 'Voie'}, {id: 59, name: 'Espace'}, {id: 60, name: 'Orientation'}, {id: 61, name: 'Distance'}, {id: 62, name: 'Univers'}, {id: 63, name: 'Terre'}, {id: 64, name: 'Mer'}, {id: 65, name: 'Continent'}, {id: 66, name: 'Climat'}, {id: 67, name: 'Saison'}, {id: 68, name: 'Temps'}, {id: 69, name: 'Date - Calendrier'}, {id: 70, name: 'Fait'}, {id: 71, name: 'Intellect'}, {id: 72, name: 'Savoir'}, {id: 73, name: 'Apprentissage'}, {id: 74, name: 'Sens'}, {id: 75, name: 'Oui - Non'}, {id: 76, name: 'Verité'}, {id: 77, name: 'Société'}, {id: 78, name: 'Fête'}, {id: 79, name: 'Esprit'}, {id: 80, name: 'Religion'}, {id: 81, name: 'Nombre'}, {id: 82, name: 'Mesure'}, {id: 83, name: 'Dimension'}, {id: 84, name: 'Sentiment'}, {id: 85, name: 'Salutation'}, {id: 86, name: 'Faire'}, {id: 87, name: 'Finalité'}, {id: 88, name: 'Travail'}, {id: 89, name: 'Agriculture'}, {id: 90, name: 'Industrie'}, {id: 91, name: 'Sens'}, {id: 92, name: 'Vision'}, {id: 93, name: 'Audition'}, {id: 94, name: 'Toucher'}, {id: 95, name: 'Être Humain'}, {id: 96, name: 'Soi'}, {id: 97, name: 'Objets'}, {id: 98, name: 'Textile'}, {id: 99, name: 'Art'}, {id: 100, name: '...'}])
Author.create([first_name: 'Sacha', last_name: 'Andre', email: 'contact@sachaandre.com', password: 'azerty123'])
Article.create({fr_name: 'Mao Zedong', en_name: 'Mao Zedong', zh_name: ' 毛泽东 ', date: '1893-1976', content:'Mao Zedong, également appellé le Grand Timonier, est le premier dirigeant de la République Populaire de Chine qu\'il créé en 1949. Il va instaurer dans son pays un modèle politique et économique similaire à celui de l\'URSS, en imposant le collectivisme communiste et le parti unique. Il va être l\'instigateur de grandes réformes économique et culturelle comme le Grand Bon en Avant (大跃进/Dà yuè jìn), réforme responsable d\'une grande famine dans le début des années 60, et de la Révolution Culturelle (文革 / wéngé), qui amena une destruction importante des savoirs chinois. Ces phrases célèbres sont recueillis dans le Petit Livre Rouge qui servit de doctrine pendant la révolution culturelle. Dès les années 70, il démarre un programme d\'ouverture sur l\'occident. Mao Zedong aurait seulement voyagé en URSS durant toute la période de sa vie.', author_id: 1, theme_ids:[42,43]})
