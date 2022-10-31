import React, {useState} from 'react'
import { useNavigate } from 'react-router-dom'
import './LogPages.css'

function NewUser() {

    let [faild, setFaild] = useState("")

    const history = useNavigate() 

    let [submitIt, setSubmitIt] = useState({
        username: "",
        password: "",
        kind: "Customer"
    })


    function handleChange(e) {
        const name = e.target.name
        const value = e.target.value

        setSubmitIt({
            ...submitIt,
            [name]: value
    })

    }






function submit() {
        let fullurl = "/newuserback/"
        fetch(fullurl, {
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            method: "POST",
            body: JSON.stringify(submitIt)
        })
        .then(res => res.json())
        .then(data => {
            if (data.id) {
                history('../')
            } else {
                let longness = data.exception.split(':')[4].length - 1
                let errorMess = data.exception.split(':')[4].slice(0, longness)
                setFaild (errorMess)
            }
            })
    }

    return(
    
        <div className="mainDiv">
            <h2>Create New User</h2><br />
            First Name:<br /><input type="text" name="firstname" onChange={handleChange}/><br />
            Last Name:<br /><input type="text" name="lastname" onChange={handleChange}/><br /><br />
            User Name:<br /><input type="text" name="username" onChange={handleChange}/><br />
            Password:<br /><input type="password" name="password" onChange={handleChange}/><br />
            Retype Password:<br /><input type="password" name="password_confirmation" onChange={handleChange}/><br /><br />
            <button onClick={submit}>Log In</button>
            <br /> <br />
            <p>{faild}</p>
        </div>
    
        
        )

}

export default NewUser