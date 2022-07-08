import React from "react"
import {NavLink} from "react-router-dom"
import "./MainStore.css"


function Card({itemData, url}) {
//console.log(itemData)
let fullurl = "/item/"+itemData.id
//console.log(url, fullurl)
return (
    <div class="card"><NavLink to={fullurl}>
        <p class="cardText">{itemData.brand}<br />{itemData.productname}<br /></p>
        <img class="cardPic" src={itemData.picurl} />
        <p class="cardText">
            Contains {itemData.pillamount} {itemData.dose} {itemData.pilltype.toLowerCase()}<br /> <br /> ${itemData.price}
        </p>
    </NavLink></div>
)

}

export default Card