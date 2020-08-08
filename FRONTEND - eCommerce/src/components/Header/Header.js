import React from 'react';
import 'components/Header/Header.css'
import BurguerMenu from 'components/BurguerMenu/BurguerMenu'
import Title from 'images/titleblack.png'
import { Link } from 'wouter'

const Header = () => {
    return (  
        <header className='header'>
            <BurguerMenu/>
            <div id="title-header-container">
                <img id="title-header" alt="title" src={Title}></img>
            </div>

            <Link to={'/register'} className="link-register">
                <a><i className="fas fa-shopping-cart shopping-header"></i></a>
            </Link>        
        </header>
    );
}
 
export default Header;