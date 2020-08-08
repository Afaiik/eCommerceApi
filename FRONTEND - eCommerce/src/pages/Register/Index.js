import React, { useState } from 'react';
import { Link } from 'wouter';
import ConfirmationButton from 'components/Buttons/ConfirmationButton'
// import AlertaContext from '../../context/alertas/alertaContext';
// import AuthContext from '../../context/autenticacion/authContext';

const Register = () => {

    //Extraer los valores del context
    // const alertaContext = useContext(AlertaContext);
    // const { alerta, mostrarAlerta } = alertaContext; 

    // const authContext = useContext(AuthContext);
    // const { registrarUsuario } = authContext; 

    //State para iniciar sesion
    const [ usuario, guardarusuario] = useState({
        nombre: '',
        email: '',
        password: '',
        confirmar: ''
    });

    const { nombre, email, password, confirmar } = usuario;

    const onChange = e => {
        guardarusuario({
            ...usuario,
            [e.target.name]: e.target.value
        })
    }

    //Cuando el usuario inicia sesion
    const onSubmit = e => {
        e.preventDefault();

        //Validar campos
        if(nombre.trim() === '' || email.trim() === '' || password.trim() === '' || confirmar.trim() === ''){
            //mostrarAlerta('Todos los campos son obligatorios', 'alerta-error');
            return;
        }

        //Password minimo de 6 caracteres
        if(password.length < 6) {
            //mostrarAlerta('La contraseña debe ser de al menos a 6 caracteres', 'alerta-error');
            return;
        }

        // Los 2 password sean iguales
        if(password !== confirmar) {
            //mostrarAlerta('Las contraseñas no coinciden', 'alerta-error');
            return;
        }

        //Pasarlo al action
        //registrarUsuario({nombre,email,password});

    }

    return (
        <div className="form-usuario">
            {/* {alerta ? (<div className={`alerta ${alerta.categoria}`}>{alerta.msg}</div>) : null} */}
            <div className="contenedor-form sombra-dark">
                <h1>Obtener una cuenta</h1>

                <form
                    onSubmit={onSubmit}
                >
                    <div className="campo-form">
                        <label htmlFor="nombre">Nombre</label>
                        <input
                            type="text"
                            id="nombre"
                            name="nombre"
                            placeholder="Tu Nombre"
                            value={nombre}
                            onChange={onChange}
                        />
                    </div>

                    <div className="campo-form">
                        <label htmlFor="email">Email</label>
                        <input
                            type="email"
                            id="email"
                            name="email"
                            placeholder="Tu Email"
                            value={email}
                            onChange={onChange}
                        />
                    </div>

                    <div className="campo-form">
                        <label htmlFor="password">Password</label>
                        <input
                            type="password"
                            id="password"
                            name="password"
                            placeholder="Tu Password"
                            value={password}
                            onChange={onChange}
                        />
                    </div>

                    <div className="campo-form">
                        <label htmlFor="confirmar">Confirmar Password</label>
                        <input
                            type="password"
                            id="confirmar"
                            name="confirmar"
                            placeholder="Repite tu Password"
                            value={confirmar}
                            onChange={onChange}
                        />
                    </div>

                    <ConfirmationButton
                        text='Hola chicos'
                    />

                </form>

                <Link to={'/'} className="enlace-cuenta">
                    Volver a Iniciar Sesion
                </Link>

            </div>
        </div>
      );
}
 
export default Register;