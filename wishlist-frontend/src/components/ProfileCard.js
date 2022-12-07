import React, {useState, useEffect} from 'react';


function ProfileCard ({profile, setProfile, password, setPassword, setLoggedin, profiles, setProfiles }) {
    

    

    function handleSubmit(e) {
        e.preventDefault()
        fetch(`http://localhost:3000/profiles/${profile.id}`, {
            method: "PATCH",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify({
              passcode: password
              
            }),
          })
            
    }
    function handleClick() {
        fetch(`http://localhost:3000/profiles/${profile.id}`,{
            method: "DELETE",
        })
        .then((r)=> r.json())
        .then((deletedProfile)=> setProfiles(profiles.filter(profile => profile.id !== deletedProfile.id)))
        setLoggedin(false)
        setProfile({})
        // window.location.href=window.location.href
    
        
    }

    return(
    <div className ="Profile-card-div">
        <h3>Profile</h3>
        <p>Name: {profile.name}</p>
        <p> {profile.image}</p>
        <p>Username: {profile.username}</p>
        <form onSubmit={handleSubmit}>
            <label>Change Password:</label>
                <input
                value = {password}
                type ="text"
                placeholder = "New Password"
                onChange={(e)=> setPassword(e.target.value)}
                />
            
            <button className='button' type="submit">Submit</button>
        </form>
        <button className='button' onClick={handleClick}>Delete User</button>
       
        
    </div>
    )
}

export default ProfileCard;