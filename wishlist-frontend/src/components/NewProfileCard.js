import React from "react";

function CreateProfileCard({name, setName, username, setUsername, setPassword, password, profiles, setProfiles, profimg, setProfimg, handleImage, handleUsername, handlePassword, handleName}){
    function handleSubmit(e){
        e.preventDefault()
        const newProfile={
            name: name,
            image: profimg,
            username: username,
            password: password
        }
        fetch("http://localhost:3000/profiles", {
            method:"POST",
            headers:{
              "content-Type": "application/json",
            }, 
            body: JSON.stringify(newProfile),
          })
          .then((r) => r.json())
          //.then(setProfiles([...profiles, newProfile]))
          setName('')
          setUsername('')
          setProfimg('')
          setPassword('')
          
        //   window.location.href=window.location.href
        }
    return(
        <div className="New-user-card">
        <form onSubmit={handleSubmit}>
            <div>
                <label>Name:</label>
                <input type="text" name="name" value={name} onChange={handleName} />
            </div>
            <div>
                <label>Image:</label>
                <input type="integer" name="age" value={profimg} onChange={handleImage} />
            </div>
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
        <p>You must log in after creating your new user!</p>
    </div>
    )

}
export default CreateProfileCard