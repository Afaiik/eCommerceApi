import React from 'react';
import {Carousel} from 'react-responsive-carousel'
import 'react-responsive-carousel/lib/styles/carousel.min.css'
import 'components/Banner/Banner.css'
//import getBanners from 'services/getBanner'
import banner1 from 'images/banner1.jfif'
import banner2 from 'images/banner2.jpg'
import banner3 from 'images/banner3.jfif'

const Banner = () => {


    //const bannerImgs = getBanners();
    const bannerImgs = [
        {
            bannerImg: banner1
        },
        {
            bannerImg: banner2
        },
        {
            bannerImg: banner3
        }
    ]

    return ( 
        <Carousel showArrows={true} showThumbs={false} autoPlay={true} showStatus={false} dynamicHeight={true} infiniteLoop={true}>
                {
                    bannerImgs.length !== 0 ?
                    bannerImgs.map(banner => 
                        <div key={banner.bannerImg}>
                            <img className="banner-img" alt='bannerImg' src={banner.bannerImg} />
                        </div>
                    )
                    : null
                }
        </Carousel>
     );
}
 
export default Banner;