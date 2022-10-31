# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command ({or created alongside the database with db:setup}).
#
# Examples:
#
#   movies = Movie.create({[Vitamin.create ({ name: "Star Wars" }) Vitamin.create ({ name: "Lord of the Rings" }]})
#   Character.create({name: "Luke", movie: movies.first})


Vitamin.create ({
    name: "Vitamin A",
    whatsitdo:"Helps form and maintain healthy teeth, bones, soft tissue, mucous membranes, and skin."
})
Vitamin.create ({
    name: "Vitamin B1",
    whatsitdo: "Part of an enzyme needed for energy metabolism."
})
Vitamin.create ({
    name: "Vitamin B2",
    whatsitdo: "Part of an enzyme needed for energy metabolism."
})
Vitamin.create ({
    name: "Vitamin B3",
    whatsitdo: "Part of an enzyme needed for energy metabolism."
})
Vitamin.create ({
    name: "Vitamin B4",
    whatsitdo: "Part of an enzyme needed for energy metabolism."
})
Vitamin.create ({
    name: "Vitamin B12",
    whatsitdo: "Part of an enzyme needed for energy metabolism."
})
Vitamin.create ({
    name: "Vitamin C",
    whatsitdo: "Also called ascorbic acid, this is an antioxidant that promotes healthy teeth and gums. It helps the body absorb iron and maintain healthy tissue. It is also essential for wound healing."
})
Vitamin.create ({
    name: "Calcium",
    whatsitdo: "Building strong bones and teeth."
})
Vitamin.create ({
    name: "Vitamin D",
    whatsitdo: "Vitamin D is also known as the 'sunshine vitamin,' since it is made by the body after being in the sun. Ten to 15 minutes of sunshine 3 times a week is enough to produce the body's requirement of vitamin D for most people at most latitudes. People who do not live in sunny places may not make enough vitamin D. It is very hard to get enough vitamin D from food sources alone. Vitamin D helps the body absorb calcium. You need calcium for the normal development and maintenance of healthy teeth and bones. It also helps maintain proper blood levels of calcium and phosphorus."
})
Vitamin.create ({
    name: "Vitamin E",
    whatsitdo: "Vitamin E is an antioxidant also known as tocopherol. It helps the body form red blood cells and use vitamin K."
})
Vitamin.create ({
    name: "Folate",
    whatsitdo: "Folate helps to form DNA and RNA and is involved in protein metabolism. It plays a key role in breaking down homocysteine, an amino acid that can exert harmful effects in the body if it is present in high amounts."
})
Vitamin.create ({
    name: "Vitamin K",
    whatsitdo: "Vitamin K is needed because without it, blood would not stick together (coagulate). Some studies suggest that it is important for bone health."
})
Vitamin.create ({
    name: "Magnesium",
    whatsitdo: "Magnesium plays many crucial roles in the body, such as supporting muscle and nerve function and energy production."
})
Vitamin.create ({
    name: "Potassium",
    whatsitdo: "Potassium is found naturally in many foods and as a supplement. Its main role in the body is to help maintain normal levels of fluid inside our cells. Sodium, its counterpart, maintains normal fluid levels outside of cells. Potassium also helps muscles to contract and supports normal blood pressure."
})
Vitamin.create ({
    name: "Sodium",
    whatsitdo: "It flavors food and is used as a binder and stabilizer. It is also a food preservative, as bacteria can't thrive in the presence of a high amount of salt. The human body requires a small amount of sodium to conduct nerve impulses, contract and relax muscles, and maintain the proper balance of water and minerals."
})







Item.create ({
	name:"Spring Valley Vitamin A",
	productname:"Vitamin A",
	brand:"Spring Valley",
	dose:"2400mg",
	pillamount:250,
	price:5.99,
	pilltype:"Softgels",
	blurb: "Vitamin A from the Spring Valley corporation.",
	picurl:"https://i.imgur.com/yWdDESq.jpg",
	featured: true,
	stock: 50
})

Item.create ({
	name:"Nature Made Vitamin B12",
	productname:"Vitamin B12",
	brand:"Nature Made",
	dose:"1000 mcg",
	pillamount:75,
	pilltype:"Tablets",
	blurb: "B12 tablets to help your energy metabolism.",
	price:5.99,
	picurl:"https://imgur.com/XMYEPFw.jpg",
	featured: true,
	stock: 50
})

Item.create ({
	name:"Nature Made B Complex",
	productname:"B Complex",
	brand:"Nature Made",
	dose:"1000 mcg",
	pillamount:60,
	pilltype:"Tablets",
	blurb: "All of the B vitamins together.",
	price:5.99,
	picurl:"https://imgur.com/9LEhCPj.jpg",
	featured: true,
	stock: 50
})

Item.create ({
	name:"Emergen-C Orange Flavor",
	productname:"Orange Flavor",
	brand:"Emergen-C",
	dose:"1000 mg",
	pillamount:30,
	pilltype:"Packets of Powder",
	blurb: "A delicious way to get immune-building vitamin c.",
	price:6.99,
	picurl:"https://imgur.com/Y3ZgQnl.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Nature Made Vitamin C",
	productname:"Vitamin C",
	brand:"Nature Made",
	dose:"250 mg",
	pillamount:150,
	pilltype:"Gummies",
	blurb: "Vitamin C in pill form.",
	price:7.99,
	picurl:"https://imgur.com/ZseNjkT.jpg",
	featured: true,
	stock: 50
})

Item.create ({
	name:"Solgar Calcium Magnesium D",
	productname:"Calcium Magnesium D",
	brand:"Solgar",
	dose:"? Mg",
	pillamount:300,
	pilltype:"Tablets",
	blurb: "Magnesium to help you manage your stress level.",
	price:8.99,
	picurl:"https://imgur.com/zpAHSgY.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Country Life Calcium Magnesium",
	productname:"Calcium Magenesium",
	brand:"Country Life",
	dose:"100mg/500mg",
	pillamount:180,
	pilltype:"Tablets",
	blurb: "Magnesium to help you manage your stress level.",
	price:9.99,
	picurl:"https://imgur.com/mCjwwGR.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Clover Organic Farms Milk",
	productname:"Milk",
	brand:"Clover Organic Farms",
	dose:"1 Cup",
	pillamount:12,
	pilltype:"Cups",
	blurb:"Contains calcium.",
	price:10.99,
	picurl:"https://imgur.com/zmsmTbI.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Nature's Bounty Calcium",
	productname:"Calcium",
	brand:"Nature's Bounty",
	dose:"500 mg",
	pillamount:300,
	pilltype:"Tablets",
	blurb:"Calcium in tablet form.",
	price:11.99,
	picurl:"https://imgur.com/tQsHGZV.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Vitamin Code Vitamin D",
	productname:"Vitamin D",
	brand:"Vitamin Code",
	dose:"125 mcg",
	pillamount:50,
	pilltype:"Tablets",
	blurb: "Vitamin D from Vitamin Code.",
	price:12.99,
	picurl:"https://imgur.com/iORDlik.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Webber Naturals Vitamin E",
	productname:"Vitamin E",
	brand:"Webber Naturals",
	dose:"400 iu",
	pillamount:300,
	pilltype:"Softgels",
	blurb: "Helps the body form red blood cells.",
	price:13.99,
	picurl:"https://imgur.com/VeDN7n8.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Spring Valley Folate",
	productname:"Folate",
	brand:"Spring Valley",
	dose:"666mg",
	pillamount:250,
	pilltype:"Tablets",
	blurb: "Folate tablets for those who need them.",
	price:14.99,
	picurl:"https://imgur.com/RFEG6XQ.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Swanson Folate",
	productname:"Folate",
	brand:"Swanson",
	dose:"800 mcg",
	pillamount:30,
	pilltype:"Capsule",
	blurb: "Folate capsule for those who need them.",
	price:15.99,
	picurl:"https://imgur.com/jwJHlnj.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Nature Made Vitamin K",
	productname:"Vitamin K",
	brand:"Nature Made",
	dose:"100 mcg",
	pillamount:30,
	pilltype:"Softgels",
	blurb: "Helps blood stick together.",
	price:16.99,
	picurl:"https://imgur.com/sTqCWL0.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Nature Made Magnesium",
	productname:"Magnesium",
	brand:"Nature Made",
	dose:"250 mg",
	pillamount:100,
	pilltype:"Tablets",
	blurb: "Magnesium to help you manage stress levels.",
	price:17.99,
	picurl:"https://imgur.com/xDhqyCG.jpg",
	stock: 50,
	featured: false
})

Item.create ({
	name:"Nature Made Potassium",
	productname:"Potassium",
	brand:"Nature Made",
	dose:"? mg",
	pillamount:100,
	pilltype:"Tablets",
	blurb: "Posassium, Nature Made.",
	price:18.99,
	picurl:"https://imgur.com/ZpJS0G7.jpg",
	stock: 50,
	featured: false
})

Item.create ({
	name:"CMC Research Division Sodium",
	productname:"Sodium",
	brand:"CMC Research Division",
	dose:"1 gr",
	pillamount:100,
	pilltype:"Tablets",
	blurb: "Sodium tablets for those prescribed as such.",
	price:19.99,
	picurl:"https://imgur.com/LBvg13M.jpg",
	featured: false,
	stock: 50
})

Item.create ({
	name:"Mortin Salt",
	productname:"Salt",
	brand:"Mortin",
	dose:"50lb",
	pillamount:1,
	pilltype:"Bag",
	blurb: "Contains lots of sodium.",
	price:20.99,
	picurl:"https://imgur.com/ulRy1T5.jpg",
	featured: false,
	stock: 50
})



User.create({
	firstname: "Huihui",
	lastname: "Zhu",
    username: "TheBunnyWhoSqueaks",
    password: "XiaoHui",
    kind:"Customer"
})

User.create({
	firstname: "Hao",
	lastname: "Zhang",
    username: "HatefulNotShy",
    password: "XiaoJiao",
    kind:"Customer"
})

User.create({
	firstname: "Victoria",
	lastname: "Marziotto",
    username: "OldAndSpunky",
    password: "Grandma",
    kind:"Customer"
})





Review.create({
	username: "TheBunnyWhoSqueaks",
	title: "Good Value for the Money.",
	reviewtext: "I went to CVS, and the vitamins are cheaper on here. Just buy here and save some money.",
	stars: 5,
	user_id: 1,
	item_id: 5
})

Review.create({
	username: "HatefulNotShy",
	title: "Delicious",
	reviewtext: "I never used to be able to remember to take my vitamin C pills, but this are so delicious, I can't stop myself from taking it!",
	stars: 3,
	user_id: 2,
	item_id: 4
})

Review.create({
	username: "HatefulNotShy",
	title: "Really Cuts Stress",
	reviewtext: "I work a very stressful job and used to come home every day angry, but ever since taking these, I feel a lot more relaxed.",
	stars: 5,
	user_id: 2,
	item_id: 15
})

Review.create({
	username: "OldAndSpunky",
	title: "Very Useful",
	reviewtext: "My doctor recommended I take sodium suppliments, so I chose these. They've never steered me wrong.",
	stars: 3,
	user_id: 3,
	item_id: 17
})

Review.create({
	username: "OldAndSpunky",
	title: "High Quality Milk",
	reviewtext: "I used to buy my milk at the supermarket, but they never have this brand. After drinking Clover Organic Farms Milk, I will never drink any other kind.",
	stars: 5,
	user_id: 3,
	item_id: 8
})

Itemvitamin.create({
    item_id: 1,
    vitamin_id: 1
})





















