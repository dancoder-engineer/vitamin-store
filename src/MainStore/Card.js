import React from "react"
import {NavLink} from "react-router-dom"
import "./MainStore.css"


function Card({itemData}) {
//console.log(itemData)
let fullurl = "/item/"+itemData.id
//console.log(url, fullurl)
return (
    <div className="card"><NavLink to={fullurl}>
        <p className="cardText">{itemData.brand}<br />{itemData.productname}<br /></p>
        <img className="cardPic" src={itemData.picurl} />
        <p className="cardText">
            Contains {itemData.pillamount} {itemData.dose} {itemData.pilltype.toLowerCase()}<br /> <br /> ${itemData.price}
        </p>
    </NavLink></div>
)

}

export default Card