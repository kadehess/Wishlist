import React, {useState, useEffect} from "react";

function CreateLoginCard({setProfile, profile, setUsername, username, setPassword, password, handleUsername, handlePassword, loggedin, setLoggedin, profiles}){
    console.log(profiles)
    function handleSubmit(e){
        e.preventDefault()
        fetch("http://localhost:3000/login", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify({ username: username,
            password: password }),
          })
            .then((res) => {
                if(res.ok){
                    res.json().then(setProfile)
                    
                    setLoggedin(true)
                }})
                
    
            
    }

    return(
    <div className='Login-card-div'>
        <form className='Login-card-form'onSubmit={handleSubmit}>
            <div>
                <label>Username:</label>
                <input type="text" name="uname" value={username} onChange={handleUsername} />
            </div>
            <div>
                <label>Password:</label>
                <input type="password" name="pass" value={password} onChange={handlePassword} />
            </div>
            <div>
                <input className='button' type="submit" />
            </div>
        </form>
        
        
    </div>
    )

}
export default CreateLoginCard
