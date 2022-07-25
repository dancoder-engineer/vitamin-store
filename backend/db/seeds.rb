# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command ({or created alongside the database with db:setup}).
#
# Examples:
#
#   movies = Movie.create({[Vitamin.create ({ name: "Star Wars" }) Vitamin.create ({ name: "Lord of the Rings" }]})
#   Character.create({name: "Luke", movie: movies.first})


Vitamin.create ({
    name: "Vitamin A",
    whatsitdo:"A is for 'a good vitamin'"
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
    whatsitdo: "The C means 'Crap vitamins come from other companies, good vitamins come only from us.'"
})
Vitamin.create ({
    name: "Calcium",
    whatsitdo: "Builds strong bones. Haven't you ever seen a milk commercial!?"
})
Vitamin.create ({
    name: "Vitamin D",
    whatsitdo: "D, as in 'do buy tons of this so our executives can be even richer.'"
})
Vitamin.create ({
    name: "Vitamin E",
    whatsitdo: "E stands for 'everybody needs to buy their vitamins from us.'"
})
Vitamin.create ({
    name: "Folate",
    whatsitdo: "Makes your body so flexible, you can be used as a folder to keep papers in."
})
Vitamin.create ({
    name: "Vitamin K",
    whatsitdo: "Needed for proper blood clotting"
})
Vitamin.create ({
    name: "Magnesium",
    whatsitdo: "Calms you down and makes you mellow, man."
})
Vitamin.create ({
    name: "Potassium",
    whatsitdo: "Makes you feel like a banana!"
})
Vitamin.create ({
    name: "Sodium",
    whatsitdo: "Salty! Eww!"
})







Item.create ({
	name:"Spring Valley Vitamin A",
	productname:"Vitamin A",
	brand:"Spring Valley",
	dose:"2400mg",
	pillamount:250,
	price:5.99,
	pilltype:"Softgels",
	blurb:"This 'a' is 'a' new start for your body. Take it every day and you'll be feeling like a million bucks. Your bank account will still be feeling as broke as ever, mind you, but YOU'LL feel like a million bucks, which is something.",
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
	blurb:"Do you want vitamin B? Do you hate the numbers 1, 2, 3 and 6, but love their least common multiple? Then this B12 is for you!",
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
	blurb:"Not the 'b's! Not the 'bbbbbbbbbbbbbbbbb's! Ohhhh noooo! The Tablets are in my eyes!",
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
	blurb:"This contains as much vitamin C as 10 oranges. You COULD eat 10 oranges instead, but that's about 1,000 calories.If you like some variety in your diet, might I suggest just drinking the Emergen-C and having maybe AN orange, or maybe two, so you can have some meat and other kinds of food, as well?",
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
	blurb:"You like vitamins? You like candy? Then this is your bag, baby! Bet'cha can't eat just one, but you'll have to use all your willpower to keep from eating the whole bottle at once, or you'll be sleeping on the toilet tonight!",
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
	blurb:"This one has three kinds of vitamins, because more is better!",
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
	blurb:"This will calm you down and make your bones stronger. If you like to fight, definitely get this, because strong bones make your fist stronger, and being calm makes it so your enemy can never throw you off your game.",
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
	blurb:"You want a calcium suppliment? Drink more milk!",
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
	blurb:"Want calcium? Lactose intolerant? Enjoy!",
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
	blurb:"Did you buy calcium? Better buy this too, or you won't be able to absorb it and your purchase will be in vain. Actually, we don't care if you give us money and don't get anything for it, but we do care if you buy two things instead of one, because that's two times the MONEY! Double our cashflow! Double our overly-e	pensive fun! Double our MOOLAH!!!!!",
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
	blurb:"Don't you just hate it when the insides of your cells come out and all start forming a big mess and you melt because you no longer have proper cells to keep you in the shape of a human? It used to happen to me all the time, until I got vitamin e to strengthen my cell walls, and the ladies love me now that I look like a human and not an amorphous blob.",
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
	blurb:"All 2020, your pastor told you constantly that the covid vaccine was the mark of the beast. Well, he was wrong. The vaccine isn't the mark of the beast, this folate is! The 666 mg it contains will power you up to be the best soldier of satan you can be.",
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
	blurb:"This folate is not the evil variety. You should probably buy this instead.",
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
	blurb:"If anyone tried to 'k'ill you, you'll wish you took more vitamin k, so your blood will 'k'lot better, and make those gumshot wounds a whole lot less fatal.",
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
	blurb:"Are you an uptight square? Would you rather be more mellow? Then take some CBD! Although, magnesium ain't half bad for your stress and an	iety, either.",
	price:17.99,
	picurl:"https://imgur.com/xDhqyCG.jpg",
	featured: false
})

Item.create ({
	name:"Nature Made Potassium",
	productname:"Potassium",
	brand:"Nature Made",
	dose:"? mg",
	pillamount:100,
	pilltype:"Tablets",
	blurb:"Here's the pill for all you banana haters! Buy a bottle and enjoy your banana-free e	istence. Does that make you weird? Sure, but that just leaves more bananas for the rest of us!",
	price:18.99,
	picurl:"https://imgur.com/ZpJS0G7.jpg",
	featured: false
})

Item.create ({
	name:"CMC Research Division Sodium",
	productname:"Sodium",
	brand:"CMC Research Division",
	dose:"1 gr",
	pillamount:100,
	pilltype:"Tablets",
	blurb:"Sodium chloride contains tons of sodium and lots of cholrine! Take a few of these, and you'll be retining as much water as a swimming pool, and the water you're retaining will be just as cholrinated as swimming pool water, only with less urine.",
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
	blurb:"Why pay extra for high falootin medical grade sodium when you can just oversalt the hell out of your food and get all the same benefits. This bag contains enough salt that you can cook one meal with enough salt that Gordon Ramsay will make fun of you for the rest of your life, then after you die, he'll find you on the other side and consinue micking you for all eternity.",
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






Address.create({
	street1: "53 Richmond Blvd.",
    street2: "Unit 1b",
    town: "Ronkonkoma",
    state: "NY",
    zipcode: "11779",

	user_id: 2,
	#order_id: 5
})

Address.create({
    street1: "107 Sea Cove Rd.",
    street2: "",
    town: "Northport",
    state: "NY",
    zipcode: "11768",

	user_id: 3,
#	order_id: 5
})

Address.create({
    street1: "1110 Scott Dr.",
    street2: "",
    town: "N Valley Stream",
    state: "NY",
    zipcode: "11580",

	user_id: 1,
#	order_id: 5
})



Creditcard.create({
	nameoncard: "HuiHui Zhu",
	number: "12345",
	expiration: "04/28",
	cvc: "123",
	user_id: 1, 
	address_id: 1
})

Creditcard.create({
	nameoncard: "Hao Zhang",
	number: "12345",
	expiration: "04/28",
	cvc: "123",
	user_id: 2, 
	address_id: 2
})

Creditcard.create({
	nameoncard: "Victoria Marziotto",
	number: "12345",
	expiration: "04/28",
	cvc: "123",
	user_id: 3, 
	address_id: 3
})

Review.create({
	username: "TheBunnyWhoSqueaks",
	title: "Guinea Pigs Love It!",
	reviewtext: "Like humans, my body doesn't create vitamin c. My daddy gives me these pills ground up in my Timmy, and they make me feel big and strong!",
	stars: 5,
	user_id: 1,
	item_id: 5
})

Review.create({
	username: "HatefulNotShy",
	title: "Can't Stop My Husband from Eating Them!",
	reviewtext: "I like the way this tastes, but so does my super fat husband, who works at home and drinks the whole box in the time it takes me to drink one pack.",
	stars: 3,
	user_id: 2,
	item_id: 4
})

Review.create({
	username: "HatefulNotShy",
	title: "Stress Reduction",
	reviewtext: "I take two of these every day to reduce my stress. They work great!!",
	stars: 5,
	user_id: 2,
	item_id: 15
})

Review.create({
	username: "OldAndSpunky",
	title: "Help Me...",
	reviewtext: "My daughter keeps giving me these in an attempt to kill me as part of some Game of Thrones-esque backstab fest over inheritence or something. Should've stayed with Janis.",
	stars: 1,
	user_id: 3,
	item_id: 17
})

Review.create({
	username: "OldAndSpunky",
	title: "These Things Scare Me...",
	reviewtext: "My daughter feeds me these. I think that 666 in the mg is some kind of coded messge about how she really feels about me.",
	stars: 1,
	user_id: 3,
	item_id: 12
})

Itemvitamin.create({
    item_id: 1,
    vitamin_id: 1
})








