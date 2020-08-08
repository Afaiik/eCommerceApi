import React from 'react';
import { slide as Menu } from 'react-burger-menu'
import 'components/BurguerMenu/BurguerMenu.css'
import Logo from 'images/logo512.png'
import Title from 'images/titleblack.png'

const BurguerMenu = () => {

    const showSettings = e => {
        e.preventDefault();
    }

    return (  
        <Menu width={'100%'} noOverlay>
            <div className="title-container-home">
                <div className="title-col-home">
                    <img id="title-home" alt="title" src={Title}></img>
                </div>
                <div className="title-col-home">
                    <img id="logo-home" alt="logo" src={Logo}></img>
                </div>                                
            </div>
            <div id="home" className="menu-item" href="/">
                <i className="fas fa-user"></i>
                Usuario
                <span>nacho@gmail.com</span>
                <a href="/" id="settings"><i className="fas fa-cog"></i></a>
            </div>
            <a id="home" className="menu-item" href="/"><i className="fas fa-home"></i>Inicio</a>
            <a id="about" className="menu-item" href="/"><i className="fas fa-tshirt"></i>Indumentaria</a>
            <a id="contact" className="menu-item" href="/"><i className="fas fa-coffee"></i>Yerba</a>
            <a onClick={showSettings} className="menu-item--small" href="/contact"><i className="fas fa-id-card"></i>Contacto</a>
        </Menu>
    );
}

export default BurguerMenu;