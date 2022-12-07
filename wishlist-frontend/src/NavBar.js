import React from 'react'
export default function NavBar() {
    return <nav className="nav">
        <a href="/" className="site-title">Wishlist</a>
    <ul>
        <li>
            <a href="/Gifts">Gifts</a>
        </li>
        <li>
            <a href="/SignIn">Sign In</a>
        </li>
    </ul>
    </nav>
}