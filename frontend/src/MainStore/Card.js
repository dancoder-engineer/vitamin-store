import React from "react"


function Card({itemData}) {
console.log(itemData)

return (
    <div>
        <p>{itemData.name}</p>
    </div>
)

}

export default Card