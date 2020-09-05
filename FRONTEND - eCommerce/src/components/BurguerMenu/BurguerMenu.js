import React from 'react';
import { slide as Menu } from 'react-burger-menu'
//import getBurguerMenu from 'services/getBurguerMenu'
//import getCompany from 'services/getCompany'
import 'components/BurguerMenu/BurguerMenu.css'
import Logo from 'images/logo512.png'
import Title from 'images/titleblack.png'

const BurguerMenu = () => {

    //const company = getCompany();
    const company = {
            title: 'No Limits',
            titleImg: `${Title}`, 
            logo: Logo
        }
    //const menus = getBurguerMenu();
    const menus = [
        {
            title: 'home',
            description: 'Inicio',
            icon: 'fas fa-home',
            href: '/'

        },
        {
            title: 'clothes',
            description: 'Indumentaria',
            icon: 'fas fa-tshirt',
            href: '/clothes'

        },
        {
            title: 'yerba',
            description: 'Yerba',
            icon: 'fas fa-coffee',
            href: ''

        },
        {
            title: 'contact',
            description: 'Contacto',
            icon: 'fas fa-id-card',
            href: '/contact'

        }
    ]

    const showSettings = e => {
        e.preventDefault();

    }

    return (  
        <Menu width={'100%'} noOverlay>
            <div className="title-container-home">
                <div className="title-col-home">
                    <img id="title-home" alt="title" src={company.titleImg}></img>
                </div>
                <div className="logo-col-home">
                    <img id="logo-home" alt="logo" src={company.logo}></img>
                </div>                                
            </div>
            <div id="user-item" className="menu-item" href="/">
                <i id="menu-user-icon" className="fas fa-user"></i>
                <div id="menu-text-container">
                    <p id="menu-text">
                        <span id="menu-user-name">Usuario</span>
                        <span id="menu-user-email">nacho@gmail.com</span>
                    </p>
                </div>
                <a href="/" id="menu-settings-icon" onClick={showSettings}><i className="fas fa-cog"></i></a>
            </div>
            {
                menus.map(menu => 
                    <a 
                        className="menu-item" 
                        key={menu.title} 
                        href={menu.href}
                    >
                        <i className={`menu-item-icon ${menu.icon}`}></i>
                        <span className="menu-item-text">{menu.description}</span>
                        <span className="menu-item-arrow">
                            <i className="fas fa-angle-right"></i>
                        </span>
                    </a>                    
                )
            }
            
        </Menu>
    );
}

export default BurguerMenu;