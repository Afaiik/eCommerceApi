import clienteAxios from 'config/axios'

const fromApiResponseToUsers = apiResponse => {
    const {data = []} = apiResponse
    return data
}

export default async function getUsers () {

    const respuesta = await clienteAxios.get('/user')

    return fromApiResponseToUsers(respuesta)
}
