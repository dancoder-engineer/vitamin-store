import React from 'react'
import {useState} from 'react'
import {useNavigate} from 'react-router-dom'

import './LogPages.css'

function LogIn() {
    let [faild, setFaild] = useState("")

    const history = useNavigate() 

    let [submitIt, setSubmitIt] = useState({
        username: "",
        password: ""
    })


    function handleChange(e) {
        const name = e.target.name
        const value = e.target.value

        setSubmitIt({
            ...submitIt,
            [name]: value
    })

    }

    function handleLogIn() {

        let fullurl = "/login/"
        fetch("/login/", {
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            method: "POST",
            body: JSON.stringify(submitIt)
        })
        .then(res => res.json())
        .then(data => { 
    //        console.log(data)
            if(data === null) {
                setFaild ("User name or password incorrect.")               
            } else {
                history('../')
            }
        }
        )
}




return(
    
    <div className="mainDiv">
        <h2>Log In</h2><br />
        User Name:<br /><input type="text" name="username" onChange={handleChange}/><br />
        Password:<br /><input type="password" name="password" onChange={handleChange}/><br />
        <button onClick={handleLogIn}>Log In</button>
        <br /> <br />
        <p>{faild}</p>
    </div>

    
    )

}

export default LogIn