import React, {useState} from "react"
import {NavLink} from 'react-router-dom'

import "./MainStore.css"

function Header({searchFunc, search, user, youGetMe}) {

  // console.log(user)

 let logo =  <img src="https://imgur.com/qMzJkwN.png" title='Complaining Stone Medicinals' alt="Complaining Stone Medicinals" className="logo"/>
 let loginPic =  <img src="https://imgur.com/eFhM0ZG.png" title='Log In' alt="Log In" className="headerImage"/>
 let newUserPic =  <img src="https://imgur.com/Gu4Z1L8.png" title='Create New User' alt="Create New User" className="headerImage"/>
 let cartPic =  <img src="https://imgur.com/cmy2RUU.png" title='Cart' alt="Cart" className="headerImage"/>
 let logOutPic =  <img src="https://imgur.com/7YAnRh4.png" title='Log Out' alt="Log Out" className="headerImage"/>
 let deletePic =  <img src="https://imgur.com/TOh61in.png" title='Delete my Account' alt="Delete my Account" className="headerImage"/>

 function TESTnewuser() {

                let createInfo = {
                        firstname: "Dan",
                        lastname: "Seminara",
                        username: "CrawdKenny",
                        password: "HuiHui",
                        password_confirmation: "HuiHjjhhfsui",
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
                .then(data => youGetMe())
}

 

    
    

    let loggedInPart = (
        <div className="hello">{logo}
        <NavLink to="../logout">{logOutPic}</NavLink>  <NavLink to="../cart">{cartPic}</NavLink> <NavLink to="../deleteacct">{deletePic}</NavLink> </div>
    )

    let loggedOutPart = (
        <div>
           {logo} <NavLink to="../login">{loginPic}</NavLink>     <NavLink to="../newuser">{newUserPic}</NavLink>     <NavLink to="../cart">{cartPic}</NavLink>
        </div>
    )


    let searchTerm = ""

    let searchBar = (<div></div>)
    if (search === 1) { searchBar = (
        <div>
            <label htmlFor="searchTerm">Search: </label>
            <input type="text" className="searchTerm" id="searchTerm" onKeyPress={(e) => keyp(e.code)} onChange={e => changeSearch(e)}/>
            <button id="startSearch" onClick={ () => searchFunc(searchTerm) } >Search</button>
        </div>
    )
    }



    function handleLogout(){
        fetch("/logout")
        .then(res => res.json())
        .then(data => youGetMe())
    }


    function changeSearch(e){
        searchTerm = (e.target.value)
    }

    function keyp(e){
        if (e==="Enter"){
            searchFunc(searchTerm)
    }
    }
    return(
        <div>
            {user ? loggedInPart : loggedOutPart}
            {searchBar}
        </div>
    )
}

export default Header