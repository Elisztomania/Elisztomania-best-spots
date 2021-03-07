puts "Cleaning database... "
  Spot.destroy_all

puts "Creanting spots..."
  wdf = Spot.create(name: 'WeDressFair', location: '4 rue des Capucins, 69001 Lyon', category: 'Ecolo', description: 'THE shop de vêtements éco-responsables stylés.', latitude: 45.7690354, longitude: 4.832723)
  source = File.open("app/assets/images/spots/wdf.JPG")
  wdf.photos.attach(io: source, filename: 'wdf.JPG', content_type: 'image/jpg')
  wdf.save!

  lam = Spot.create(name: 'Les Ateliers de Marinette', location: '44 rue Saint-Georges, 69005 Lyon', category: 'Shop', description: 'La référence pour acheter les pelliluces argentique les moins chères de France + super déco!')
  lam.update(latitude: 45.7578887, longitude: 4.8250567)
  source = File.open("app/assets/images/spots/lam.jpg")
  lam.photos.attach(io: source, filename: 'lam.jpg', content_type: 'image/jpg')
  lam.save!

  lm = Spot.create(name: 'La limonade de Marinette', location: '46 rue Saint-Georges, 69005 Lyon', category: 'Café', description: 'Un de mes café préféré! In love de la déco vintage et des tables en formica.')
  lm.update(latitude: 45.7577696, longitude: 4.8250583)
  source = File.open("app/assets/images/spots/lm.jpg")
  lm.photos.attach(io: source, filename: 'lm.jpg', content_type: 'image/jpg')
  lm.save!

  berliner = Spot.create(name: 'Mont Berliner', location: '22 Rue Sainte-Catherine, 69001 Lyon', category: 'Food', description: 'Kebab style Berlinois au poulet avec pleins de légumes : juste une tuerie!')
  source = File.open("app/assets/images/spots/berliner.jpg")
  berliner.photos.attach(io: source, filename: 'berliner.jpg', content_type: 'image/jpg')
  berliner.save!

  arcade = Spot.create(name: 'Gamespirit', location: '23 Quai Jean Moulin, 69002 Lyon', category: 'Shop', description: "Petite salle d'arcade trop cool et shop de jeux vidéo.")
  source = File.open("app/assets/images/spots/arcade.jpg")
  arcade.photos.attach(io: source, filename: 'arcade.jpg', content_type: 'image/jpg')
  arcade.save!

  bbstop = Spot.create(name: 'BubbleStop', location: '26 Rue Victor Hugo, 69002 Lyon', category: 'Food', description: "Best bubble tea pour ceux pas fan de tapioca, il y a pleins d'autres options fruitées.")
  source = File.open("app/assets/images/spots/bbstop.jpg")
  bbstop.photos.attach(io: source, filename: 'bbstop.jpg', content_type: 'image/jpg')
  bbstop.save!

  bw = Spot.create(name: 'Bënnie Organic', location: "18 Rue du Bât d'Argent, 69001 Lyon", category: 'Food', description: "Burgers, saldes, wraps, le tout bio et local.")
  source = File.open("app/assets/images/spots/bw.jpg")
  bw.photos.attach(io: source, filename: 'bw.jpg', content_type: 'image/jpg')
  bw.save!

  mokxa = Spot.create(name: 'La Boîte à Café', location: "3 Rue de l'Abbé Rozier, 69001 Lyon", category: 'Café', description: "Petit café sympathique.")
  source = File.open("app/assets/images/spots/mokxa.jpg")
  mokxa.photos.attach(io: source, filename: 'mokxa.jpg', content_type: 'image/jpg')
  mokxa.save!

  pentes_vue = Spot.create(name: 'Vue sur Part-Dieu', location: "10 Rue Bodin, 69001 Lyon", category: 'Vue', description: "Un classique mais parfait pour faire des photos.")
  source = File.open("app/assets/images/spots/pentes_vue.jpg")
  pentes_vue.photos.attach(io: source, filename: 'pentes_vue.jpg', content_type: 'image/jpg')
  pentes_vue.save!

  puzzle = Spot.create(name: 'Puzzle Café', location: "4 Rue de la Poulaillerie, 69002 Lyon", category: 'Café', description: "Le QG des cyclistes mais on peut y aller quand même si on fait pas de vélo.")
  source = File.open("app/assets/images/spots/puzzle.jpg")
  puzzle.photos.attach(io: source, filename: 'puzzle.jpg', content_type: 'image/jpg')
  puzzle.save!

  serre = Spot.create(name: "Serres des plantes carnivores et d'Afrique du Sud", location: "Jardin botanique de Lyon, 69006 Lyon", category: 'Parc', description: "Petite serre peu connue dans le Parc de la Tête d'Or.")
  source = File.open("app/assets/images/spots/serre.jpg")
  serre.photos.attach(io: source, filename: 'serre.jpg', content_type: 'image/jpg')
  serre.save!

  serre2 = Spot.create(name: "Grande serre du Parc de la Tête d'Or", location: "Parc de la Tête d'Or, 69006 Lyon", category: 'Parc', description: "Endroit idéal pour les fans de plantes et pour les photographes.")
  source = File.open("app/assets/images/spots/serre2.jpg")
  serre2.photos.attach(io: source, filename: 'serre2.jpg', content_type: 'image/jpg')
  serre2.save!

  lv = Spot.create(name: "Look Vintage", location: "8 Quai de Bondy, 69005 Lyon", category:'Fripe', description: "Super petite friperie principalement pour femme mais avec une petite sélection homme.")
  source = File.open("app/assets/images/spots/lv.jpg")
  lv.photos.attach(io: source, filename: 'lv.jpg', content_type: 'image/jpg')
  lv.save!

  parking = Spot.create(name: "Parking des Halles", location: "156 Rue Garibaldi, 69003 Lyon", category:'Archi', description: "Un de mes endroits préférés pour faire des photos! La vue est folle et l'archi des bâtiments autour olalala.")
  source = File.open("app/assets/images/spots/parking.jpg")
  parking.photos.attach(io: source, filename: 'parking.jpg', content_type: 'image/jpg')
  parking.save!

puts "#{Spot.count} spots created!"





























