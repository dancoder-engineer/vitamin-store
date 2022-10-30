import React, { useState, useEffect } from "react";
import {NavLink} from 'react-router-dom'

function DeleteAcct() {

    let [message, setMessage] = useState(null)

    useEffect(() => {
       if (!message) { youGetMe() }
    }, [])


    function youGetMe() {

        fetch("/getme/")
        .then(res => res.json())
        .then(data => { //console.log(data)
            if(data) {deleteUser("/users/" + data.id)}
        })
      }

    function deleteUser(url) {
        fetch(url, {method: 'DELETE'})
     //   .then(res => res.json())
        .then(data => {
         //   console.log(data)
            setMessage("Your account has been deleted.")
        })


    }



    return(
        <div>
            {message && ( <div>
            <p>{message}</p>
            <br />
            <NavLink to="/">Please click here to go back to the store.</NavLink>
            </div>
            )}
        </div>
    )
}

export default DeleteAcct