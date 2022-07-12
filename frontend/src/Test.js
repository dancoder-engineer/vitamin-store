import React from "react"


function Test({}) {

    fetch("http://127.0.0.1:5000/extra")
    .then (res => res.json())
    .then (data => console.log(data))

    return(
        <div>
   Hey     </div>
    )
}

export default Test