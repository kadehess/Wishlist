import React from 'react';
import {  Link } from "react-router-dom";
const NavBar= () =>{
  return (
  <div>
    <li>
      <Link to="/">Home</Link>
    </li>
    <li>
      <Link to="/WishlistPage">Wishlist</Link>
    </li>
    <li>
      <Link to="/LoginPage">Login</Link>
    </li>
  </div>
  );
}
export default NavBar;