cathy = User.create(name: "Cathy", email: "cathy@me.com", password: "1234")

us = Country.create(name: "United States")

hawaii = Location.create(name: "Hawaii")
site1 = Site.create(name: "Akaka Falls", website: "http://www.hawaii-guide.com/big_island_of_hawaii/sights/akaka_falls_state_park", note: "Has a beautiful waterfall and great hiking trail.")
site2 = Site.create(name: "Volcanoes National Park", website: "http://www.hawaii-guide.com/big_island_of_hawaii/sights/hawaii-volcanoes-national-park", note: "Highly recommended by Phil.")
site3 = Site.create(name: "Kehena Black Sand Beach", website: "http://www.hawaii-guide.com/big_island_of_hawaii/beaches/kehena_beach", note: "Yes!")
restaurant1 = Restaurant.create(name: "Da Poke Shack", website: "http://dapokeshack.com/", note: "5 stars on Yelp.")
restaurant2 = Restaurant.create(name: "Napua", website: "http://www.napuarestaurant.com/", note: "Ocean view. $$$.")
hotel1 = Hotel.create(name: "Holualoa Inn", website: "https://www.holualoainn.com/", note: "Ocean view room. Highly recommended.")
hotel2 = Hotel.create(name: "Hale Kai Hawaii Bed & Breakfast", website: "http://www.halekaihawaii.com/", note: "Ocean view rooms. Close to many sites.")

oregon = Location.create(name: "Oregon")
site4 = Site.create(name: "Cannon Beach", website: "http://www.cannonbeach.org/", note: "Where Goonies was filmed.")
site5 = Site.create(name: "Columbia River Gorge", website: "http://traveloregon.com/locations-regions/columbia-river-gorge/", note: "beautiful")
restaurant3 = Restaurant.create(name: "Block + Tackle", website: "http://www.btoysterbar.com/", note: "Oysters!")
restaurant4 = Restaurant.create(name: "Pine State Biscuits", website: "https://www.pinestatebiscuits.com/", note: "Southern cooking.")
hotel3 = Hotel.create(name: "Oval Door Bed & Breakfast", website: "http://ovaldoor.com/", note: "Farmhouse style B&B.")

kenya = Country.create(name: "Kenya")
nairobi = Location.create(name: "Nairobi")
site8 = Site.create(name: "Daphne Sheldrick Wildlife Trust Elephant Tour", website: "https://www.viator.com/Nairobi-attractions/David-Sheldrick-Wildlife-Trust/d5280-a11278", note: "Must do")
site9 = Site.create(name: "Natural World Safaris", website: "https://www.naturalworldsafaris.com/kenya-safari?gclid=CKWkh-L8zNICFVaBswodz_gBtA", note: "Definitely")
restaurant7 = Restaurant.create(name: "Tamambo Karen Blixen", website: "http://www.tamarind.co.ke/tamambo-karen/", note: "good food")
hotel4 = Hotel.create(name: "Fairview Hotel", website: "https://clhg.com/hotels/901/Fairview-Hotel-Nairobi", note: "high ratings")

cathy.countries = [us, kenya]
us.locations = [hawaii, oregon]
hawaii.sites = [site1, site2, site3]
hawaii.restaurants = [restaurant1, restaurant2]
hawaii.hotels = [hotel1, hotel2]
hawaii.save

oregon.sites = [site4, site5]
oregon.restaurants = [restaurant3, restaurant4]
oregon.hotels = [hotel3]
oregon.save

kenya.locations = [nairobi]
nairobi.sites = [site8, site9]
nairobi.restaurants = [restaurant7]
nairobi.hotels = [hotel4]
nairobi.save
kenya.save

cathy.locations = [hawaii, oregon, nairobi]
cathy.sites = [site1, site2, site3, site4, site5, site8, site9]
cathy.hotels = [hotel1, hotel2, hotel3, hotel4]
cathy.restaurants = [restaurant1, restaurant2, restaurant3, restaurant4, restaurant7]
cathy.save
# us.save

piper = User.create(name: "Piper", email: "piper@me.com", password: "1234")
canada = Country.create(name: "Canada")
alberta = Location.create(name: "Alberta" )
site6 = Site.create(name: "Moraine Lake", website: "http://banffandbeyond.com/the-lake-with-the-twenty-dollar-view-moraine-lake/", note: "top 3 places to go.")
site7 = Site.create(name: "Peyto Lake", website: "http://banffandbeyond.com/is-peyto-lake-really-that-blue/", note: "Wow!")
restaurant5 = Restaurant.create(name: "Mountain Restaurant", website: "http://lakelouisemountainrestaurant.ca/", note: "comfort food")
restaurant6 = Restaurant.create(name: "Lake Agnes Teahouse", website: "http://www.lakeagnesteahouse.com/", note: "Beautiful!")
hotel5 = Hotel.create(name: "Moraine Lake Lodge", website: "http://morainelake.com/", note: "Views of the lake and mountains.")

piper.countries = [canada]
canada.locations = [alberta]
alberta.sites = [site6, site7]
alberta.restaurants = [restaurant5]
alberta.hotels = [hotel5]

piper.locations = [alberta]
piper.sites = [site6, site7]
piper.restaurants = [restaurant5]
piper.hotels = [hotel5]

piper.save
canada.save
alberta.save

oscar = User.create(name: "Oscar", email: "oscar@me.com", password: "1234")
australia = Country.create(name: "Australia")
sydney = Location.create(name: "Sydney")
site10 = Site.create(name: "Sydney Harbour Bridge", website: "http://www.australia.gov.au/about-australia/australian-story/sydney-harbour-bridge", note: "Can climb the bridge")
site11 = Site.create(name: "Freshwater Beach", website: "http://www.sydney.com/destinations/sydney/sydney-north/manly/attractions/freshwater-beach", note: "Great for surfing.")
restaurant8 = Restaurant.create(name: "Mamak", website: "https://mamak.com.au/", note: "Malaysian Cuisine")
hotel6 = Hotel.create(name: "Shangri-La Hotel", website: "http://www.shangri-la.com/sydney/shangrila/", note: "5 stars")

# us2 = Country.create(name: "United States")
washington = Location.create(name: "Washington")
site14 = Site.create(name: "Olympic National Park", website: "https://www.nps.gov/olym/index.htm", note: "Oceans to mountaintops")
site15 = Site.create(name: "San Juan Islands", website: "https://www.visitsanjuans.com/", note: "Loved it here. Saw killer whales")
restaurant11 = Restaurant.create(name: "Friday's Crabhouse", website: "http://www.fridayscrabhouse.com/", note: "Fresh seafood. Overlooking Friday Harbor Ferry Landing.")
restaurant12 = Restaurant.create(name: "Cynthia's Bistro", website: "http://cynthiasofcourse.com/", note: "Comfort food")
hotel8 = Hotel.create(name: "Orcas Hotel", website: "https://www.orcashotel.com/", note: "Located on Orcas Island. Beautiful views.")

site16 = Site.create(name: "Waimea", website: "https://www.gohawaii.com/big-island/regions-neighborhoods/north-kohala/waimea/", note: "Cowboy Country")
site17 = Site.create(name: "Pololu Valley Lookout", website: "https://www.gohawaii.com/big-island/regions-neighborhoods/north-kohala/pololu-valley-lookout/", note: "Northeast Coastline")
restaurant13 = Restaurant.create(name: "Hawaiian Style Cafe", website: "http://hawaiianstylecafe.us/", note: "local Hawaiian comfort food")
hotel9 = Hotel.create(name: "Kamuela Inn", website: "https://www.thekamuelainn.com/", note: "One the slopes of the Kohala Mountain Range. B&B with free WiFi.")

oscar.countries = [australia, us]
australia.locations = [sydney]
sydney.sites = [site10, site11]
sydney.restaurants = [restaurant8]
sydney.hotels = [hotel6]

us.locations << washington
washington.sites = [site14, site15]
washington.restaurants = [restaurant11, restaurant12]
washington.hotels = [hotel8]

oscar.locations = [sydney, washington, hawaii]
oscar.sites = [site10, site11, site14, site15, site16, site17]
oscar.hotels = [hotel6, hotel8, hotel9]
oscar.restaurants = [restaurant8, restaurant11, restaurant12, restaurant13]

hawaii.sites << site16
hawaii.sites << site17
hawaii.hotels << hotel9
hawaii.restaurants << restaurant13

australia.save
sydney.save
us.save
washington.save
oscar.save


oscar2 = User.create(name: "Oscar Two", email: "oscar2@me.com", password: "1234")
england = Country.create(name: "England")
london = Location.create(name: "London")
site12 = Site.create(name: "London Eye", website: "https://www.londoneye.com/", note: "Observation Wheel. See London's landmarks from up on high.")
site13 = Site.create(name: "Tower Bridge", website: "http://www.towerbridge.org.uk/", note: "Iconic Bridge")
restaurant9 = Restaurant.create(name: "Mayfair Garden", website: "http://mayfairgarden.co.uk/", note: "High end Chinese food")
restaurant10 = Restaurant.create(name: "Poppies Fish & Chips", website: "http://poppiesfishandchips.co.uk/", note: "traditional fish and chips")
hotel7 = Hotel.create(name: "Four Seasons Hotel London at Park Lane", website: "http://www.fourseasons.com/london/", note: "cause I roll like that")

oscar2.countries = [england]
england.locations = [london]
oscar2.locations = [london]

london.sites = [site12, site13]
london.restaurants = [restaurant9, restaurant10]
london.hotels = [hotel7]

oscar2.sites = [site12, site13]
oscar2.restaurants = [restaurant9, restaurant10]
oscar2.hotels = [hotel7]

oscar2.save
england.save
london.save
