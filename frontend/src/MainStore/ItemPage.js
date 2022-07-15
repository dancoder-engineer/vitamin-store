import React from 'react'
import './MainStore.css'
import {useState, useEffect} from 'react'
import {useParams} from 'react-router-dom'

function ItemPage({url}) {

let [itemData, setItemData] = useState()
let [reviews, setReviews] = useState()

const params = useParams()
let fullurl = url+"items/"+params.id

useEffect(() => {
fetch(fullurl)
.then(res => res.json())
.then(data => {
    //console.log(data)
    setItemData(data)

    setReviews(data.reviews.map((i) => {
        return (
        <div key={i.id}>
            <h3 class="centerText">{i.title} {makeStars(i.stars)}</h3>
            <p class="centerText">{i.reviewtext}</p>
            <p class="smallText">written by {i.username} on {parseDate(i.created_at)}</p><br /><br /><br />
        </div>

    )}
        ))

}
    ) 
}, [])


function parseDate(dat) {
    //           0123456789012345678
    //created_at 2022-07-08T19:53:34.746Z

    let year = dat.slice(0,4)
    let month = dat.slice(5,7)
    let day = dat.slice(8,10)
    return day+"/"+month+"/"+year
}

function makeStars(amount) {
    let stars=""

    for (let n = 0; n < amount; n++) {
        stars += "★"
    }

    while(stars.length < 5) {stars += "☆"}

    return stars
}



function buttonClick() {

    let loginInfo = {
        username: "TheBunnyWhoSqueaks",
        password:"XiaoHui"
    }

    let createInfo = {
            firstname: "Dan",
            lastname: "Seminara",
            username: "CrawdKenny",
            password: "HuiHui",
            password_confirmation: "HuiHui",
            kind:"Customer"
    }

    let fullurl = "/newuser/"
    fetch(fullurl, {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
          method: "POST",
          body: JSON.stringify(createInfo)
    })
    .then(res => res.json())
    .then(data => console.log(data))
}

function button2click(){
    let fullurl = "/getme/"
    fetch(fullurl)
    .then(res => res.json())
    .then(data => console.log(data))
}


 return (
        <div class="itemStoreMain">
            <div class="itemName">
                <h1>{itemData && itemData.name}</h1>
            </div>

            <div class="pictureHolder">
                <img class="itemPicture" src={itemData && itemData.picurl} />
            </div>

            <div class="dataHolder">
                <p>
                    Brand: {itemData && itemData.brand}<br />
                    Dose: {itemData && itemData.dose}<br />
                    Pill Type: {itemData && itemData.pilltype}<br />
                    Amount of Pills: {itemData && itemData.pillamount}<br />
                </p>
                <p>
                    {itemData && itemData.blurb}<br />
                </p>
                <h2>Price: ${itemData && itemData.price} <br /></h2>
                Quantity: <input type="text" id="productQuantity" class="quantity" value="1" />
                <button onClick={button2click}>Add to Cart</button>
            </div>

            <div class="reviewsHolder">
                {reviews && reviews}
            </div>

            <div class="makeReviewHolder">
                <div class="centeredItem">
                    Title: <input type="text" id="title" value="1" />
                    Stars: <input type="text" id="numberOfStars" class="quantity" value="1" />
                </div>
                <textarea id="reviewText"  />
                <button onClick={buttonClick} id="postReview" class="centeredItem">Post Review</button>
            </div>
            <br /><br /><br />

        </div>
    )
}

export default ItemPage