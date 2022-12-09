import React from 'react'
 export default function NavBar() {
     return <nav className="nav">
         <a href="/" className="site-title">Home</a>
     <ul>
         <li>
             <a href="/wishlist">Wishlist</a>
         </li>
         <li>
             <a href="/login">Login</a>
         </li>
     </ul>
     </nav>
 }