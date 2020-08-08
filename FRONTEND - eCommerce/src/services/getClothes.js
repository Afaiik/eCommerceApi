const apiURL = [
                    {nombre: 'Buzo rojo', img: 'https://lh3.googleusercontent.com/proxy/4YiFPt5ic7tiwjkLLLZ4z1AlSyjBp7PPsGqZ4tyHtiE_ezfNWmwJyjfGvt6vaOFTEQks6nRI-pLY4Zf1_Pbg9lGvsNmh4u4cbbLxrg'},
                    {nombre: 'Buzo azul', img: 'https://d26lpennugtm8s.cloudfront.net/stores/141/701/products/png-buzo-azul-shitfy1-ec8de9b35d4de73d0415632340301787-480-0.png'},
                    {nombre: 'Buzo amarillo', img: 'https://d26lpennugtm8s.cloudfront.net/stores/871/662/products/polar-amarillo11-214cdd0b25063a341715608071421734-1024-1024.png'},
                    {nombre: 'Buzo verde', img: 'https://d26lpennugtm8s.cloudfront.net/stores/100/956/products/buzo-verde1-81e4ef9cdc474bd1c815716744252337-1024-1024.png'},
                    {nombre: 'Remera roja', img: 'https://fabric.com.ar/wp-content/uploads/2017/11/REMERALISA.ROJA_-600x600.jpg'},
                    {nombre: 'Pantalon negro', img: 'https://w7.pngwing.com/pngs/24/762/png-transparent-waist-pants-black-m-pants-men-black-active-pants-black-m.png'},
                    {nombre: 'Pantalon jean', img: 'https://static.cybermonday.com.ar/uploads/megaofertas/1408/jeanseul-cace1-5db0cfbf5e145.png'}
                ]

export default function getClothes () {



    return apiURL;
    
    // fetch(apiURL)
    //     .then(res => res.json())
    //     .then(response => {
    //         const {data = []} = response
            
    //         setClothes(data);
    //     })
}
            