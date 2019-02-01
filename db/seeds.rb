User.create!([
  {name: "Buffalo Bill", email: "bill@gmail.com", password: "password", password_confirmation: "password", admin: false},
  {name: "Jim Croce", email: "jim@gmail.com", password: "password", password_confirmation: "password", admin: true}
])
Supplier.create!([
  {name: "Big Bob's Novelty Emporium", email: "bigbob@emporium.com", phone_number: "310-555-9922"},
  {name: "Radio Shack", email: "john.hanson@gmail.com", phone_number: "801-666-5550"},
  {name: "Uncle Bucks Van by the River", email: "buckminster462@yahoo.com", phone_number: "716-555-0000"}
])
Product.create!([
  {name: "DnD Dice set", price: "57.99", description: "Take down mighty dragons with this timeless set of 20 sided wonders", in_stock: true, supplier_id: 2},
  {name: "Rubber Axe", price: "42.00", description: "all work and no play makes jack go crazy", in_stock: true, supplier_id: 1},
  {name: "WNYX Mug", price: "2.99", description: "Get your morning news once you wake up with a cup of joe from... Well Joe, He made it with his homemade duct tape.", in_stock: true, supplier_id: 3},
  {name: "Hitchhiker's Guide to the Galaxy", price: "42.0", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", in_stock: true, supplier_id: 2},
  {name: "Yoda sleeping bag", price: "40.0", description: "For real", in_stock: true, supplier_id: 1},
  {name: "Lightsaber", price: "270.0", description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster", in_stock: true, supplier_id: 2},
  {name: "Space Cowboy Laser Gun", price: "172.50", description: "This weapon has no other description than, Shiney!", in_stock: true, supplier_id: 2},
  {name: "Sonic Screwdriver", price: "9.81", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", in_stock: true, supplier_id: 2},
  {name: "Rubber Axe without handle", price: "32.55", description: "all work and no play makes jack go crazy", in_stock: true, supplier_id: 3}
])
Category.create!([
  {name: "Cheap"},
  {name: "Wearable"},
  {name: "Damage"},
  {name: "Home Goods"}
])
Image.create!([
  {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: 5},
  {url: "http://images2.fanpop.com/images/photos/5200000/Jack-the-Shinning-mr-jack-nicholson-5260797-480-360.jpg", product_id: 8},
  {url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg", product_id: 1},
  {url: "http://www.notcot.com/images/guide.gif", product_id: 2},
  {url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png", product_id: 7},
  {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", product_id: 3},
  {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", product_id: 4},
  {url: "https://dyn0.media.forbiddenplanet.com/products/28577492.jpg", product_id: 6},
  {url: "https://i.ytimg.com/vi/W7ImIzJJGEA/maxresdefault.jpg", product_id: 3},
  {url: "https://static.highsnobiety.com/wp-content/uploads/2015/12/23195207/the-first-real-lightsaber-00.jpg", product_id: 3}
])

ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 6, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 4, category_id: 2},
  {product_id: 7, category_id: 2},
  {product_id: 5, category_id: 3},
  {product_id: 8, category_id: 3},
  {product_id: 9, category_id: 3},
  {product_id: 3, category_id: 3},
  {product_id: 4, category_id: 3},
  {product_id: 5, category_id: 4},
  {product_id: 1, category_id: 4},
  {product_id: 2, category_id: 4},
  {product_id: 7, category_id: 4}
])
