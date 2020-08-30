import React from 'react';
import ProductCard from 'components/ProductCard/ProductCard'
import 'components/NewClothesList/NewClothesList.css'
import img1 from 'images/product1.jfif'
import img2 from 'images/product2.jfif'
import img3 from 'images/product3.jfif'
import img4 from 'images/product4.jfif'

const NewClothesList = () => {

    const productos = [
        {
            id: '1',
            img: img1,
            title: 'Buzo drix canguro',
            price: '2000'
        },
        {
            id: '2',
            img: img2,
            title: 'Buzo Garcon',
            price: '1750'
        },
        {
            id: '3',
            img: img3,
            title: 'Buzo Militar',
            price: '2450'
        },
        {
            id: '4',
            img: img4,
            title: 'Buzo Basico',
            price: '1950'
        },
        {
            id: '5',
            img: img1,
            title: 'Buzo drix canguro',
            price: '2000'
        }
    ]

    return (  
        <div className="new-clothes-container">
            <h3>Novedades</h3>
            <div className="new-clothes-box"> 
                {
                    productos.map(producto =>
                    <div key={producto.id}>
                        <ProductCard
                            id={producto.id}
                            img={producto.img}
                            title={producto.title}
                            price={producto.price}
                        />
                    </div>
                        
                    )
                }
            </div>
        </div>
    );
}
 
export default NewClothesList;