import clienteAxios from 'config/axios'

const fromApiResponseToBannerImages = apiResponse => {
    const {data = []} = apiResponse

    return data
}

export default async function getBanners () {

    const respuesta = await clienteAxios.get('/bannerImages')
    
    return fromApiResponseToBannerImages(respuesta)
}
