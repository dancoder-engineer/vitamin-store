import React, {useState} from 'react'
import { useNavigate } from 'react-router-dom'
import './LogPages.css'

function NewUser() {

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






function submit() {
        let fullurl = "/newuser/"
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
                setFaild ("Please fill in all of the fields..")
            }
            })
    }

    return(
    
        <div class="mainDiv">
            First Name:<br /><input type="text" name="firstname" onChange={handleChange}/><br />
            Last Name:<br /><input type="text" name="lastname" onChange={handleChange}/><br /><br />
            User Name:<br /><input type="text" name="username" onChange={handleChange}/><br />
            Password:<br /><input type="text" name="password" onChange={handleChange}/><br />
            Retype Password:<br /><input type="text" name="password_confirmation" onChange={handleChange}/><br /><br />
            <button onClick={submit}>Log In</button>
            <br /> <br />
            <p>{faild}</p>
        </div>
    
        
        )

}

export default NewUser