import React, { useState } from 'react'
import { Link } from 'wouter'
import ConfirmationButton from 'components/Buttons/ConfirmationButton'
import 'pages/Login/Login.css'
import Logo from 'images/logo512.png'
import Title from 'images/titleblack.png'

const Login = () => {

    //State para iniciar sesion
    const [ usuario, guardarusuario] = useState({
        email: '',
        password: ''
    });

    const { email, password } = usuario;

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

        //Pasarlo al action

    }
    
    return (
        <div className="form-usuario">
            <div className="title-container">
                <div className="title-col">
                    <img id="logo" alt="logo" src={Logo}></img>
                </div>
                <div className="title-col">
                    <img id="title" alt="title" src={Title}></img>
                </div> 
            </div>

            <div className="form-container">
                <form
                    onSubmit={onSubmit}
                >
                    <div className="field-form">
                        <label htmlFor="email">Email</label>
                        <input
                            type="email"
                            id="email"
                            name="email"
                            placeholder="Nombre de Usuario"
                            value={email}
                            onChange={onChange}
                        />
                    </div>

                    <div className="field-form">
                        <label htmlFor="password">Password</label>
                        <input
                            type="password"
                            id="password"
                            name="password"
                            placeholder="Contraseña"
                            value={password}
                            onChange={onChange}
                        />
                    </div>
                    
                    <ConfirmationButton
                        text='Iniciar Sesión'
                    />
                    
                    <span className="text-register">Si no tienes cuenta&nbsp;</span>

                    <Link to={'/register'} className="link-register">
                        Registrate
                    </Link>
                </form>

                <hr></hr>
            </div>
        </div>
      );
}
 
export default Login;