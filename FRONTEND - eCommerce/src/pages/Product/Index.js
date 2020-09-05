import React from 'react';
import Header from 'components/Header/Header'
import Banner from 'components/Banner/Banner'
import NewClothesList from 'components/NewClothesList/NewClothesList'
import 'pages/Home/Home.css'

const Product = () => {
    return (  
        <div>
            <Header
                burguerMenu={false}
            />
            <div className="header-split"></div>
            <div className="product-container">
                
            </div>
        </div>
    );
}
 
export default Product;