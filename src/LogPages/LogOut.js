import React from 'react'
import {NavLink} from 'react-router-dom'

import './LogPages.css'

function LogOut() {
        fetch("/logoutback")
        .then(res => res.json())
//        .then(data => youGetMe())

return (
    <div className="mainDiv">
        You have been logged out.<br />
        <NavLink to="/">Please click here to return to the store.</NavLink>
    </div>
)

    
    
}

export default LogOut