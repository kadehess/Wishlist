import React, {useState, useEffect} from 'react';


function ProfileCard ({logout, profile, setProfile, password, setPassword, setLoggedin, profiles, setProfiles }) {
    

    

   
    function handleClick() {
        fetch(`http://localhost:3000/profiles/${profile.id}`,{
            method: "DELETE",
        })
        .then((r)=> r.json())
        .then((deletedProfile)=> setProfiles(profiles.filter(profile => profile.id !== deletedProfile.id)))
        setLoggedin(false)
        setProfile({})
        logout()
        // window.location.href=window.location.href
    
        
    }

    return(
    <div className ="Profile-card-div">
        <h3>Profile</h3>
        <p>Name: {profile.name}</p>
        <p> {profile.image}</p>
        <p>Username: {profile.username}</p>
        
        <button className='button' onClick={handleClick}>Delete User</button>
       
        
    </div>
    )
}

export default ProfileCard;