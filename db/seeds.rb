Category.create!([
  {name: "Panfish"},
  {name: "Predator"},
  {name: "Bottom-feeder"},
  {name: "Freshwater"}
])
CategoryFish.create!([
  {category_id: 1, fish_id: 1},
  {category_id: 2, fish_id: 2},
  {category_id: 3, fish_id: 3},
  {category_id: 3, fish_id: 4},
  {category_id: 3, fish_id: 5},
  {category_id: 4, fish_id: 1},
  {category_id: 4, fish_id: 2},
  {category_id: 4, fish_id: 3},
  {category_id: 4, fish_id: 4},
  {category_id: 4, fish_id: 5}
])
Fish.create!([
  {name: "Crappie", price: 7, image: "http://images.dnr.state.mn.us//fisheries/fishes/crappie/black_crappie.jpg", description: "Highly regarded pan fish often considered to be among the best-tasting freshwater fish in North America.", supplier_id: 3},
  {name: "Sturgeon", price: 20, image: "http://images.dnr.state.mn.us/education_safety/education/minnaqua/leaders_guide/fish/lake_sturgeon.gif", description: "A bony fish with primitive characteristics that can get up to 18 feet long.", supplier_id: 2},
  {name: "Largemouth Bass", price: 8, image: "http://images.dnr.state.mn.us/natural_resources/animals/fish/profiles/largemouth-bass.png", description: "An olive-green fish with a very large mouth.", supplier_id: 1},
  {name: "Walleye", price: 10, image: "http://images.dnr.state.mn.us/fisheries/fishes/wae/walleye.jpg", description: "A largely light-greeen and gold fish with eyes that point outward.", supplier_id: 3},
  {name: "Muskellunge", price: 4, image: "http://images.dnr.state.mn.us/fisheries/fishes/mue/tigermuskie.jpg", description: "This fish closely resembles other species such as the northern pike in both appearance and behavior, but can get much larger.", supplier_id: 3},
  {name: "Flounder", price: 4, image: "jhgvvvv", description: "This is a weird fish that has both its eyes on the same side of its body", supplier_id: 1}
])

Supplier.create!([
  {name: "Great Lakes Fishery", email: "info@glf.org", phone: "734-662-3209"},
  {name: "Wisconsin Animals", email: "badgercountry@wiscimals.com", phone: "696-432-0984"},
  {name: "Jon Johnson", email: "heresjonny@aol.com", phone: "218-329-0383"}
])

