import clienteAxios from 'config/axios'

const fromApiResponseToCompany = apiResponse => {
    const {data = []} = apiResponse

    return data
}

export default async function getCompany () {

    const respuesta = await clienteAxios.get('/company')
    
    return fromApiResponseToCompany(respuesta)
}
