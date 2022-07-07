import React from "react"
import "./MainStore.css"


function Card({itemData}) {
//console.log(itemData)

return (
    <div class="card">
        <p class="cardText">{itemData.name}<br /></p>
        <img class="cardPic" src={itemData.picurl} />
        <p class="cardText">
            Contains {itemData.pillamount} {itemData.dose} {itemData.pilltype.toLowerCase()}<br /> <br /> ${itemData.price}
        </p>
    </div>
)

}

export default Card