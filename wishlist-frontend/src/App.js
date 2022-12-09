import React, {useState, useEffect} from "react";
import {Routes, Route} from "react-router-dom";
import RenderHomePage from "./components/HomePage";
import RenderLoginPage from "./components/LoginPage";
import './App.css';
import NavBar from './NavBar'
import GiftContainer from './components/GiftContainer'

function App() {
  const [profile, setProfile] = useState({})
  const [username, setUsername] = useState('')
  const [password, setPassword] = useState('')
  const [name, setName] = useState('')
  const [profimg, setProfimg] = useState('')
  const [profiles, setProfiles] = useState([])
  const [loggedin, setLoggedin] = useState(false)

  // useEffect(() => {
  //   fetch("http://localhost:3000/profiles")
  //     .then(r => r.json())
  //     .then(setProfiles)
  // }, [])
const [gift, setAllGifts] = useState([]);
  useEffect(() => { 
    fetch("http://localhost:3000/auth")
    .then(res => {
      if(res.ok){
        res.json().then(prof => setProfile(prof))
        setLoggedin(true)
      }
    })
  },[])
  function logOut(){
    fetch("http://localhost:3000/logout", {
      method:"DELETE",
    }).then(() => {setLoggedin(false)
      setProfile({})}
    )
    
      
}

  useEffect(() => {
    fetch("http://localhost:3000/gifts")
      .then((res) => res.json())
      .then((data) => setAllGifts(data));
  }, []);

  return (
    <div className="App">
      <NavBar/>
      <Routes>
        <Route exact path = "/"
        element={<RenderHomePage 
        />}
        />
        <Route exact path = "/login"
        element={<RenderLoginPage
        setProfile={setProfile}
        profile={profile}
        setUsername={setUsername}
        username={username}
        setPassword={setPassword}
        password={password}
        setProfimg={setProfimg}
        profimg={profimg}
        setProfiles={setProfiles}
        profiles={profiles}
        setLoggedin={setLoggedin}
        loggedin={loggedin}
        logout={logOut}
        name={name}
        setName={setName}/>}/>

        <Route exact path = "/wishlist" 
        />

      </Routes>
    </div>
  );
}


export default App;
