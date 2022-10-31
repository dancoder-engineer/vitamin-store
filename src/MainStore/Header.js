import React, {useState} from "react"
import {NavLink} from 'react-router-dom'

import "./MainStore.css"

function Header({searchFunc, search, user}) {

  // console.log(user)

 let logo =  <img src="https://imgur.com/IKJaxNV.png" title='Complaining Stone Medicinals' alt="Complaining Stone Medicinals" className="logo"/>
 let loginPic =  <img src="https://imgur.com/KEAhj4f.png" title='Log In' alt="Log In" className="headerImage"/>
 let newUserPic =  <img src="https://imgur.com/PwulKQd.png" title='Create New User' alt="Create New User" className="headerImage"/>
 let cartPic =  <img src="https://imgur.com/DSmAqNY.png" title='Cart' alt="Cart" className="headerImage"/>
 let logOutPic =  <img src="https://imgur.com/LslMJRx.png" title='Log Out' alt="Log Out" className="headerImage"/>
 let deletePic =  <img src="https://imgur.com/dfDAEXo.png" title='Delete my Account' alt="Delete my Account" className="headerImage"/>



 

    
    

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






    function changeSearch(e){
        searchTerm = (e.target.value)
    }

    function keyp(e){
        if (e==="Enter"){
            searchFunc(searchTerm)
    }
    }
    return(
        <div className="headerDiv">
            {user ? loggedInPart : loggedOutPart}
            {searchBar}
        </div>
    )
}

export default Header