import React, {useState, useEffect} from 'react'
import getUsers from 'services/getUsers'

const ListaUsuarios = () => {
    
    const [users, setUsers] = useState([])

    useEffect(() => {
        getUsers().then(setUsers)
    }
    ,[])
    
    return (  
        <div>
        <h1>Usuarios</h1>
            {
                users.length !== 0 ?
                users.map(user => 

                        <div key={user.id}>
                            <p>{user.username}</p>
                            <br/>
                            <p>{user.email}</p>
                        </div>
                    )
                    : null
            }
        </div>
    );
}
 
export default ListaUsuarios;