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
	name:"a",
	brand:"Spring Valley",
	dose:"2400mg",
	pillamount:250,
	price:5.99,
	pilltype:"Softgel",
	blurb:"This 'a' is 'a' new start for your body. Take it every day and you'll be feeling like a million bucks. Your bank account will still be feeling as broke as ever, mind you, but YOU'LL feel like a million bucks, which is something.",
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"b12",
	brand:"Nature Made",
	dose:"1000 mcg",
	pillamount:75,
	pilltype:"Tablet",
	blurb:"Do you want vitamin B? Do you hate the numbers 1, 2, 3 and 6, but love their least common multiple? Then this B12 is for you!",
	price:5.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"bcomple	",
	brand:"Nature Made",
	dose:"1000 mcg",
	pillamount:60,
	pilltype:"Tablet",
	blurb:"Not the 'b's! Not the 'bbbbbbbbbbbbbbbbb's! Ohhhh noooo! The tablets are in my eyes!",
	price:5.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"c emergenc",
	brand:"Emergen-C",
	dose:"1000 mg",
	pillamount:30,
	pilltype:"Powder",
	blurb:"This contains as much vitamin C as 10 oranges. You COULD eat 10 oranges instead, but that's about 1,000 calories.If you like some variety in your diet, might I suggest just drinking the Emergen-C and having maybe AN orange, or maybe two, so you can have some meat and other kinds of food, as well?",
	price:6.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"c",
	brand:"Nature Made",
	dose:"250 mg",
	pillamount:150,
	pilltype:"Gummy",
	blurb:"You like vitamins? You like candy? Then this is your bag, baby! Bet'cha can't eat just one, but you'll have to use all your willpower to keep from eating the whole bottle at once, or you'll be sleeping on the toilet tonight!",
	price:7.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"calcium magnesium d",
	brand:"Solgar",
	dose:"? Mg",
	pillamount:300,
	pilltype:"Tablet",
	blurb:"This one has three kinds of vitamins, because more is better!",
	price:8.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"calcium magnesium",
	brand:"Country Life",
	dose:"100mg/500mg",
	pillamount:180,
	pilltype:"Tablet",
	blurb:"This will calm you down and make your bones stronger. If you like to fight, definitely get this, because strong bones make your fist stronger, and being calm makes it so your enemy can never throw you off your game.",
	price:9.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"calcium milk",
	brand:"Clover Organic Farms",
	dose:"1 Cup",
	pillamount:12,
	pilltype:"Cups",
	blurb:"You want a calcium suppliment? Drink more milk!",
	price:10.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"calcium",
	brand:"Nature's Bounty",
	dose:"500 mg",
	pillamount:300,
	pilltype:"Tablets",
	blurb:"Want calcium? Lactose intolerant? Enjoy!",
	price:11.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"d",
	brand:"Vitamin Code",
	dose:"125 mcg",
	pillamount:50,
	pilltype:"Tablets",
	blurb:"Did you buy calcium? Better buy this too, or you won't be able to absorb it and your purchase will be in vain. Actually, we don't care if you give us money and don't get anything for it, but we do care if you buy two things instead of one, because that's two times the MONEY! Double our cashflow! Double our overly-e	pensive fun! Double our MOOLAH!!!!!",
	price:12.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"e",
	brand:"Webber Naturals",
	dose:"400 iu",
	pillamount:300,
	pilltype:"Softgel",
	blurb:"Don't you just hate it when the insides of your cells come out and all start forming a big mess and you melt because you no longer have proper cells to keep you in the shape of a human? It used to happen to me all the time, until I got vitamin e to strengthen my cell walls, and the ladies love me now that I look like a human and not an amorphous blob.",
	price:13.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"evil folate",
	brand:"Spring Valley",
	dose:"666mg",
	pillamount:250,
	pilltype:"Tablet",
	blurb:"All 2020, your pastor told you constantly that the covid vaccine was the mark of the beast. Well, he was wrong. The vaccine isn't the mark of the beast, this folate is! The 666 mg it contains will power you up to be the best soldier of satan you can be.",
	price:14.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"folate",
	brand:"Swanson",
	dose:"800 mcg",
	pillamount:30,
	pilltype:"Capsule",
	blurb:"This folate is not the evil variety. You should probably buy this instead.",
	price:15.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"k",
	brand:"Nature Made",
	dose:"100 mcg",
	pillamount:30,
	pilltype:"Softgel",
	blurb:"If anyone tried to 'k'ill you, you'll wish you took more vitamin k, so your blood will 'k'lot better, and make those gumshot wounds a whole lot less fatal.",
	price:16.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"Magnesium",
	brand:"Nature Made",
	dose:"250 mg",
	pillamount:100,
	pilltype:"Tablet",
	blurb:"Are you an uptight square? Would you rather be more mellow? Then take some CBD! Although, magnesium ain't half bad for your stress and an	iety, either.",
	price:17.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"potassium",
	brand:"Nature Made",
	dose:"? mg",
	pillamount:100,
	pilltype:"Tablet",
	blurb:"Here's the pill for all you banana haters! Buy a bottle and enjoy your banana-free e	istence. Does that make you weird? Sure, but that just leaves more bananas for the rest of us!",
	price:18.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"sodium",
	brand:"CMC Research Division",
	dose:"1 gr",
	pillamount:100,
	pilltype:"Tablet",
	blurb:"Sodium chloride contains tons of sodium and lots of cholrine! Take a few of these, and you'll be retining as much water as a swimming pool, and the water you're retaining will be just as cholrinated as swimming pool water, only with less urine.",
	price:19.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
})

Item.create ({
	name:"bag of salt",
	brand:"Mortin",
	dose:"50lb",
	pillamount:1,
	pilltype:"Bag",
	blurb:"Why pay e	tra for high falootin medical grade sodium when you can just oversalt the hell out of your food and get all the same benefits. This bag contains enough salt that you can cook one meal with enough salt that Gordon Ramsay will make fun of you for the rest of your life, then after you die, he'll find you on the other side and consinue micking you for all eternity.",
	price:20.99,
	picurl:"https://i.imgur.com/gg15Wzi.jpg"
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


Itemvitamin.create({
    item_id: 1,
    vitamin_id: 1
})








