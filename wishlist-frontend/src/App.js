import React, {useState, useEffect} from "react";
import {Routes, Route} from "react-router-dom";
import RenderHomePage from "./components/HomePage";
import RenderLoginPage from "./components/LoginPage";
import './App.css';

function App() {
  const [profile, setProfile] = useState({})
  const [username, setUsername] = useState('')
  const [password, setPassword] = useState('')
  const [name, setName] = useState('')
  const [profimg, setProfimg] = useState('')
  const [profiles, setProfiles] = useState([])
  const [loggedin, setLoggedin] = useState(false)

  useEffect(() => {
    fetch("http://localhost:3000/profiles")
      .then(r => r.json())
      .then(setProfiles)
  }, [])



  return (
    <div className="App">
      <Routes>
        <Route exact path = "/"
        element={<RenderHomePage />}
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
        name={name}
        setName={setName}/>}/>

        <Route exact path = "/wishlist" 
        />

      </Routes>

    </div>
  );
}


export default App;
