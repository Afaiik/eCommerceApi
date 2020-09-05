import React from 'react';
import styled from 'styled-components'
import 'components/ProductCard/ProductCard.css'
import { Link } from 'wouter'

const ProductButton = styled.button`
    display: block;
    padding: 0.6em;
    background: #1B1C1E;
    color: #FFFFFF;
    border-radius: 10px;
    border: 1px solid rgba(0, 0, 0, 0.15);
    box-sizing: border-box;
    font-family: Poppins;
    font-style: normal;
    font-weight: 500;
    font-size: 15px;
    line-height: 22px;
    width: 60%;
    margin: 0 auto;
`

const ProductCard = ({id, img, title, price}) => {

    return ( 
        <div className="product-container">
            <div className="img-product-container">
                <img className="new-clothes-img" alt={title} src={img}></img>
            </div>
            <p className="product-title">{title}</p>
            <p className="product-price">${price}</p>
            <Link to={'/product:id'} className="link-register">
                <ProductButton className="product-button">Ver más</ProductButton>
            </Link>
            
        </div>
     );
}
 
export default ProductCard;