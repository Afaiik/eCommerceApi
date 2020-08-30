import clienteAxios from 'config/axios'

const fromApiResponseToBurguerMenu = apiResponse => {
    const {data = []} = apiResponse

    return data
}

export default async function getBurguerMenu () {

    const respuesta = await clienteAxios.get('/burguerMenu')
    
    return fromApiResponseToBurguerMenu(respuesta)
}
