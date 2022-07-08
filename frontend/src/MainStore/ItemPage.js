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

    setReviews(data.reviews.map((i) => 
        (
        <div key={i.id}>
            <h3 class="centerText">{i.title}</h3>
            <p class="centerText">{i.reviewtext}</p>
            <p class="smallText">written by {i.username}</p><br /><br /><br />
        </div>

    )
        ))

}
    ) 
}, [])


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
                <input type="text" id="quantity" value="1" />
                <button>Add to Cart</button>
            </div>

            <div class="reviewsHolder">
                {reviews && reviews}
            </div>

        </div>
    )
}

export default ItemPage