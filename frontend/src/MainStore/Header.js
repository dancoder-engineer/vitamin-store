import React, {useState} from "react"
import {NavLink} from 'react-router-dom'


function Header({searchFunc, search, user, youGetMe}) {

  // console.log(user)

 

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
        <div>Hello, {user && user.firstname}. 
        <NavLink to="../logout">Log Out</NavLink></div>
    )

    let loggedOutPart = (
        <div>
            <NavLink to="../login">Log In</NavLink>     <NavLink to="../newuser">New User</NavLink>     <NavLink to="../cart">Cart</NavLink>
        </div>
    )


    let searchTerm = ""

    let searchBar = (<div></div>)
    if (search === 1) { searchBar = (
        <div>
            <label for="searchTerm">Search: </label>
            <input type="text" class="searchTerm" id="searchTerm" onKeyPress={(e) => keyp(e.code)} onChange={e => changeSearch(e)}/>
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