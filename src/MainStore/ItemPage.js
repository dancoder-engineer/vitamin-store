import React from 'react'
import './MainStore.css'
import {useState, useEffect} from 'react'
import {useParams} from 'react-router-dom'

import Header from './Header.js'

function ItemPage({}) {

let [itemData, setItemData] = useState()
let [reviews, setReviews] = useState()
let [amt, setAmt] = useState(null)
let [errorMessage, setErrorMessage] = useState(" ")
let [addButton, setAddButton] = useState(null)
let [reviewData, setReviewData] = useState({stars: 5})
let [showReviewBox, setShowReviewBox] = useState(false)
let [user, setUser] = useState(null)


function grabCart() {
    fetch('/getcart/')
    .then(res => res.json())
    .then((data) => {  //console.log(data)
        if (data[params.id]) {
            setAddButton("Update Cart")
            setAmt(data[params.id])
        } else {
            setAddButton("Add to Cart")
            setAmt(0)
        }
    })
}

function youGetMe() {

  fetch("/getme/")
  .then(res => res.json())
  .then(data => {  //console.log(data)
    if(data) { 
        checkIfReviewed(data.id)
        setUser(data)
     }
  })
}

function checkIfReviewed(userid) {
    fetch("/reviewsbyuseritem/" + userid + "/" + params.id)
    .then(res => res.json())
    .then(data => { 
        if (!data[0]) { setShowReviewBox(true) }
    })
    
}

function createCartSlot() {
    let fullurl = "/createcart/"
    let dat = {id : params.id}
    fetch(fullurl)
    .then(res => res.json())
//    .then(data => console.log(data))
}

function addToCart() {
    let fullurl = "/updatecart/"
    let dat = {
        id: params.id,
        amount: amt}
    fetch(fullurl, {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify(dat)
    })
    .then(res => res.json())
    .then(data => {
        if (data.error) {
            document.querySelector("#productQuantity").value = data.old
            setErrorMessage(data.error)
            setAmt(data.old)
        } else {
            setErrorMessage(" ")
            grabCart()
        }
    
    
    })
}

const params = useParams()



useEffect(() => {

if (user) {
    for (let i in reviews) { getitemData() }

} }, [user]

)




useEffect(() => {
 grabCart()
 youGetMe()
 getitemData()
 createCartSlot()

// for (let i in reviews) {    if (i.user_id === user.id) { setShowReviewBox(false) } }

}, [])

function getitemData() {
    let fullurl = "/items/"+params.id
    fetch(fullurl)
.then(res => res.json())
.then(data => {
  //  console.log(data)
    setItemData(data)

    setReviews(data.reviews.map((i) => { console.log(i)
        if (user) {
            if (user.id === i.user_id) { setShowReviewBox(false)}
        }

        return (
        <div key={i.id}>
            <h3 className="centerText">{i.title} {makeStars(i.stars)}</h3>
            <p className="centerText">{i.reviewtext}</p>
            <p className="smallText">written by {i.username} on {parseDate(i.created_at)}</p><br /><br /><br />
        </div>

    )}
        ))

}
    )
}


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

function changeAmt(e){
    if (parseInt(e.target.value) < 0) (e.target.value = '0')
    setAmt(e.target.value)
}


function buttonClick() {
    fetch("/getcart/")
    .then(res => res.json())
    .then(data => console.log(data))

    
}

function changeReview(e){
    let name = e.target.id
    let content = e.target.value

    setReviewData({
        ...reviewData,
        [name]: content
    })
    
}


function sendReview() {

    let submitIt={
        ...reviewData,
        user_id: user.id,
        item_id: params.id,
        username: user.username
    }

   // console.log(reviewData)
    

    let fullurl = "/reviews/"
    fetch(fullurl, {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify(submitIt)
    })
    .then(res => res.json())
    .then(data => {
        getitemData()
//        console.log(data)
    })
}

function byLetter() {
    fetch ('/byletter/')
    .then(res => res.json())
    .then(data => console.log(data))
}



 return (
        <div className = "bigDiv">
        <Header youGetMe={youGetMe} search={0} user={user}/> 
            
        <div className="itemStoreMain">
            <div className="itemName">
                <h1>{itemData && itemData.name}</h1>
            </div>

            <div className="pictureHolder">
                <img className="itemPicture" src={itemData && itemData.picurl} />
            </div>

            <div className="dataHolder">
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
                Quantity: {addButton && <input type="number" id="productQuantity" className="quantity" defaultValue={amt} onChange={changeAmt} /> }
                <button onClick={addToCart}>{addButton}</button><br />
                <p>{errorMessage}</p>
            </div>

            <div className="reviewsHolder">
                {reviews && reviews}
            </div>

           

            {showReviewBox && (
            <div className="makeReviewHolder">
                <div className="centeredItem">
                    Title: <input type="text" id="title" onChange={changeReview} />
                    Stars: <input type="number" id="stars" className="quantity" min="1" max="5" defaultValue="5" onChange={changeReview} />
                </div>
                <textarea id="reviewtext" onChange={changeReview} />
                <button onClick={sendReview} id="postReview" className="centeredItem">Post Review</button>
            </div>)}
            <br /><br /><br />

        </div> </div>
    )
}

export default ItemPage