# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hotels = Hotel.create([
  {
    name: 'Mahali Mzuri, Masai Mara, Kenya',
    address:'Masai Mara, Kenya',
    description:'Part of the Virgin Limited Edition collection, Sir Richard Bransons majestic safari camp in the Masai Mara is "just perfect," according to one voter. The seemingly space-age tents somehow rise up out of the landscape and blend in with it simultaneously. Wildlife remains abundant in the surrounding bush — ideal for the twice-daily game drives — and the guides are extremely knowledgeable. One respondent raved about the "excellent service," adding that "the hospitality provided at Mahali Mzuri resembles the name," which means beautiful place in Swahili. Another reader says simply that its "the best luxurious camp to visit on the African continent."',
    price: 5000,
    image_url:'https://cf.bstatic.com/xdata/images/hotel/max1024x768/85884113.jpg?k=09f2920e4be00eb871524a1321e79113443169643a07f0999b04dc45163fae39&o=&hp=1'

  },

  {
    name: 'Nayara Tented Camp',
    address:'Costa Rica',
    description:'The most recent entry to the Nayara brand has all the details covered. Cliff-top safari tents have spacious bathrooms with soaking tubs, private decks, and infinity plunge pools that overlook the lush Costa Rican rain forest and the imposing Arenal Volcano. Elsewhere on the property, guests can spot wildlife like sloths and toucans; take a dip in the dramatic, cantilevered, hot-spring-fed mineral pools; and indulge in the plush spa.',
    price: 7000,
    image_url:'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/52/7c/63/guest-room.jpg?w=900&h=-1&s=1'

  },

  {
    name: 'The Opposite House, Beijing',
    address:'Beijing, China',
    description:'Japanese architect Kengo Kuma designed this emerald glass building with subtle references to traditional Chinese architecture. Rooms are minimalist with luxurious touches like oak soaking tubs and plush beds, the staff is über-attentive, and the location is close to all the Beijing attractions.',
    price: 5500,
    image_url:'https://cdn.kiwicollection.com/media/property/PR006018/l/006018-05-UNION-The%20Opposite%20House.jpg?cb=1614904741'

  },

  {
    name: 'Capella Bangkok',
    address:'Thailand',
    description:'A hotel is an establishment that provides paid lodging on a short-term basis. ... Hotel rooms are usually numbered (or named in some smaller hotels and B&Bs) to allow guests to identify their room. Some boutique, high-end hotels have custom decorated rooms. Some hotels offer meals as part of a room and board arrangement.',
    price: 5000,
    image_url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkXrjdrBdR477IOcbk1SKtUYKaK-qm5kjfoA&usqp=CAU'

  },
 {
    name: 'Hotel Il Pellicano, Porto Ercole, Italy',
    address:'Porto Ercole, Italy ',
    description:"A favorite hideaway for movie stars of Hollywood's golden age, Hotel Il Pellicano exudes timeless elegance and understated luxury. Perched on the Tuscan coast amid tranquil gardens, the hotel's rooms and suites have garden or sea views, and the restaurant features Italian cuisine that has earned it one Michelin star.",
    price: 5500,
    image_url:'https://i.vimeocdn.com/video/1123408936-b7516ea04851535c75a7a15c0b82619097ff710a9cd3e3f33f60f7ca707ce1cc-d?mw=1100&mh=2200&q=70'

  },

  {
    name: 'Capella Ubud, Bali, Indonesia',
    address:'Bali, Indonesia',
    description:"Last year's Top 100 Hotels winner, this glamorous, Bill Bensley–designed resort features a dramatic suspension bridge leading to 22 tented hideaways surrounded by lush rain forest and the river Wos gurgling below. The on-site organic Keliki Garden supplies two restaurants and a bar, and the nightly campfire is the setting for storytelling, movies, and live music with s'mores and hot chocolate.",
    price: 5000,
    image_url:'https://exp.cdn-hotels.com/hotels/23000000/22830000/22826300/22826268/2630cfcc_z.jpg?impolicy=fcrop&w=500&h=333&q=medium'

  },

  {
    name: 'La Réserve Paris – Hôtel & Spa',
    address:'Paris, France',
    description:'Just beyond the Champs-Élysées, this 19th-century Haussmannian mansion features lavish textiles, hardwoods, and marble fireplaces. The Michelin two-starred Le Gabriel offers upscale dining in a refined atmosphere, with dishes like monkfish with white asparagus and wasabi and French pigeon with crispy buckwheat.',
    price: 7500,
    image_url:'https://www.lareserve-paris.com/wp-content/uploads/2020/11/g8h0635-768x576.jpg'

  },

  {
    name: 'Shangri-La the Shard, London',
    address:'London, UK',
    description:"Breathtaking views are standard at this hotel, which occupies 19 floors of Renzo Piano's dramatic glass skyscraper in Southwark. Rooms are luxuriously appointed with stellar service, and the four restaurants offer high-end dining experiences seemingly amid the clouds on the 52nd floor.",
    price: 6000,
    image_url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnywjdYQ3ckdwOI0FDrDsIpVNQx4eXvMpZHA&usqp=CAU'

  },

  {
    name: 'Hotel Il Pellicano, Porto Ercole, Italy',
    address:'Porto Ercole, Italy ',
    description:"A favorite hideaway for movie stars of Hollywood's golden age, Hotel Il Pellicano exudes timeless elegance and understated luxury. Perched on the Tuscan coast amid tranquil gardens, the hotel's rooms and suites have garden or sea views, and the restaurant features Italian cuisine that has earned it one Michelin star.",
    price: 5500,
    image_url:'https://i.vimeocdn.com/video/1123408936-b7516ea04851535c75a7a15c0b82619097ff710a9cd3e3f33f60f7ca707ce1cc-d?mw=1100&mh=2200&q=70'

  },

  {
    name: 'Hotel Paracas Peru',
    address:'Paracas, Peru',
    description:"Located on the stunning Paracas Peninsula, this minimalist resort is flanked by a crystal-blue bay on one side and a desert on the other. Activities — paddleboarding, shell collecting, and sailing, among others — make the most of the hotel's natural surroundings.",
    price: 4000,
    image_url:'https://www.privateupgrades.com/_data/default-hotel_image/11/55355/hotel-paracas-7_1400x1400_auto.jpg'

  },

  {
    name: 'The Oberoi, New Delhi',
    address:'New Delhi, India',
    description:'There are 220 well-appointed rooms in this luxury hotel situated near several Delhi attractions. Guests can unwind at either the indoor or outdoor swimming pool, then choose from seven restaurants and bars, including one by Alfred Prasad, formerly of the Michelin-starred Tamarind in London.',
    price: 5000,
    image_url:'https://www.oberoihotels.com/-/media/oberoi-hotels/website-images/the-oberoi-new-delhi/contact-us/delhi-hotel.jpg'

  },
   {
    name: 'Porto Ercole, Italy',
    address:'2Sbarcatello, 58018 Porto Ercole, Italy ',
    description:"A favorite hideaway for movie stars of Hollywood's golden age, Hotel Il Pellicano exudes timeless elegance and understated luxury. Perched on the Tuscan coast amid tranquil gardens, the hotel's rooms and suites have garden or sea views, and the restaurant features Italian cuisine that has earned it one Michelin star.",
    price: 5500,
    image_url:'https://i.vimeocdn.com/video/1123408936-b7516ea04851535c75a7a15c0b82619097ff710a9cd3e3f33f60f7ca707ce1cc-d?mw=1100&mh=2200&q=70'

  },


  {
    name: 'Nayara Tented Camp',
    address:'Costa Rica',
    description:'The most recent entry to the Nayara brand has all the details covered. Cliff-top safari tents have spacious bathrooms with soaking tubs, private decks, and infinity plunge pools that overlook the lush Costa Rican rain forest and the imposing Arenal Volcano. Elsewhere on the property, guests can spot wildlife like sloths and toucans; take a dip in the dramatic, cantilevered, hot-spring-fed mineral pools; and indulge in the plush spa.',
    price: 7000,
    image_url:'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/52/7c/63/guest-room.jpg?w=900&h=-1&s=1'

  },
])