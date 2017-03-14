cathy = User.create(name: "Cathy", email: "cathy@me.com", password: "1234")

us = Country.create(name: "United States")

hawaii = City.create(name: "Hawaii")
site1 = Site.create(name: "Akaka Falls", website: "http://www.hawaii-guide.com/big_island_of_hawaii/sights/akaka_falls_state_park", note: "Has a beautiful waterfall and great hiking trail.")
site2 = Site.create(name: "Volcanoes National Park", website: "http://www.hawaii-guide.com/big_island_of_hawaii/sights/hawaii-volcanoes-national-park", note: "Highly recommended by Phil.")
site3 = Site.create(name: "Kehena Black Sand Beach", website: "http://www.hawaii-guide.com/big_island_of_hawaii/beaches/kehena_beach", note: "Yes!")
restaurant1 = Restaurant.create(name: "Da Poke Shack", website: "http://dapokeshack.com/", note: "5 stars on Yelp.")
restaurant2 = Restaurant.create(name: "Napua", website: "http://www.napuarestaurant.com/", note: "Ocean view. $$$.")
hotel1 = Hotel.create(name: "Holualoa Inn", website: "https://www.holualoainn.com/", note: "Ocean view room. Highly recommended.")
hotel2 = Hotel.create(name: "Hale Kai Hawaii Bed & Breakfast", website: "http://www.halekaihawaii.com/", note: "Ocean view rooms. Close to many sites.")

oregon = City.create(name: "Oregon")
site4 = Site.create(name: "Cannon Beach", website: "http://www.cannonbeach.org/", note: "Where Goonies was filmed.")
site5 = Site.create(name: "Columbia River Gorge", website: "http://traveloregon.com/cities-regions/columbia-river-gorge/", note: "beautiful")
restaurant3 = Restaurant.create(name: "Block + Tackle", website: "http://www.btoysterbar.com/", note: "Oysters!")
restaurant4 = Restaurant.create(name: "Pine State Biscuits", website: "https://www.pinestatebiscuits.com/", note: "Southern cooking.")
hotel3 = Hotel.create(name: "Oval Door Bed & Breakfast", website: "http://ovaldoor.com/", note: "Farmhouse style B&B.")

kenya = Country.create(name: "Kenya")
nairobi = City.create(name: "Nairobi")
site8 = Site.create(name: "Daphne Sheldrick Wildlife Trust Elephant Tour", website: "https://www.viator.com/Nairobi-attractions/David-Sheldrick-Wildlife-Trust/d5280-a11278", note: "Must do")
site9 = Site.create(name: "Natural World Safaris", website: "https://www.naturalworldsafaris.com/kenya-safari?gclid=CKWkh-L8zNICFVaBswodz_gBtA", note: "Definitely")
restaurant7 = Restaurant.create(name: "Tamambo Karen Blixen", website: "http://www.tamarind.co.ke/tamambo-karen/", note: "good food")
hotel4 = Hotel.create(name: "Fairview Hotel", website: "https://clhg.com/hotels/901/Fairview-Hotel-Nairobi", note: "high ratings")

cathy.countries = [us, kenya]
us.cities = [hawaii, oregon]
hawaii.sites = [site1, site2, site3]
hawaii.restaurants = [restaurant1, restaurant2]
hawaii.hotels = [hotel1, hotel2]

kenya.cities = [nairobi]
nairobi.sites = [site8, site9]
nairobi.restaurants = [restaurant7]
nairobi.hotels = [hotel4]

cathy.save
us.save
hawaii.save
kenya.save
nairobi.save

piper = User.create(name: "Piper", email: "piper@me.com", password: "1234")
canada = Country.create(name: "Canada")
alberta = City.create(name: "Alberta" )
site6 = Site.create(name: "Moraine Lake", website: "http://banffandbeyond.com/the-lake-with-the-twenty-dollar-view-moraine-lake/", note: "top 3 places to go.")
site7 = Site.create(name: "Peyto Lake", website: "http://banffandbeyond.com/is-peyto-lake-really-that-blue/", note: "Wow!")
restaurant5 = Restaurant.create(name: "Mountain Restaurant", website: "http://lakelouisemountainrestaurant.ca/", note: "comfort food")
restaurant6 = Restaurant.create(name: "Lake Agnes Teahouse", website: "http://www.lakeagnesteahouse.com/", note: "Beautiful!")
hotel5 = Hotel.create(name: "Moraine Lake Lodge", website: "http://morainelake.com/", note: "Views of the lake and mountains.")

piper.countries = [canada]
canada.cities = [alberta]
alberta.sites = [site6, site7]
alberta.restaurants = [restaurant5]
alberta.hotels = [hotel5]

piper.save
canada.save
alberta.save
