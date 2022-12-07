import React, {useState} from "react";
import CreateLoginCard from "./LoginCard";
import CreateProfileCard from "./NewProfileCard";
import { useNavigate } from "react-router-dom";

function RenderLoginPage({setProfile, setUsername, username, setPassword, password, setProfimg, profimg, setProfiles, profiles, setLoggedin, loggedin, name, setName }){
    const navigate = useNavigate()
    const [display, setDisplay] = useState("none")
    function handleDisplay(){
        switch (display){
            case "login":
                return <CreateLoginCard setProfile={setProfile} setUsername={setUsername} username={username} setPassword={setPassword} password={password} handleUsername={handleUsername} handlePassword={handlePassword} loggedin={loggedin} setLoggedin={setLoggedin} profiles={profiles}/>
            case "new":
                return <CreateProfileCard name={name} setName={setName} username={username} setUsername={setUsername} setPassword={setPassword} password={password} profiles={profiles} setProfiles={setProfiles} profimg={profimg} setProfimg={setProfimg} handleImage={handleImage} handleUsername={handleUsername} handlePassword={handlePassword} handleName={handleName} />
            case "none":
                return null
        }
    }

    function handleUsername(e){
        setUsername(e.target.value)
    }
    function handlePassword(e){
        setPassword(e.target.value)
    }

    
    function handleImage(e){
        setProfimg(e.target.value)
    }
    function handleName(e){
        setName(e.target.value)
    }
    function handleLogIn () {
        setDisplay("login")
    }

    function handleNewProfile () {
        setDisplay("new")
    }
    function logOut(){
        setLoggedin(false)
        setProfile({})
    }

   

    return(
        <div className='Login-page-div'>
        {loggedin ? <button className='button'onClick={logOut}>Log Out</button> : <button className='button' onClick={handleLogIn}>Log In</button>}
        <button className='button' onClick={handleNewProfile}>Create Account</button>
        {loggedin ? null : handleDisplay()}
        {loggedin ? <p>Logged in Successfully!</p> : <p>Not Logged In</p>}
    </div>
    )

}
export default RenderLoginPage