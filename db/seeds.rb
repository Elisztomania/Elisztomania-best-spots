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


puts "#{Spot.count} spots created!"
