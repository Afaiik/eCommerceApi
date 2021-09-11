import React from 'react';
import Home from 'pages/Home/Index'
import Login from 'pages/Login/Index'
import Register from 'pages/Register/Index'
import {Router, Route, Switch} from 'wouter'
import Product from 'pages/Product/Index';

// Hola Jhonny aprendiendo GIT

function App() {
  return (
	<Router>
		<Switch>
			<Route exact path="/" component={Home} />
			<Route exact path="/login" component={Login} />
			<Route exact path="/register" component={Register} />	
			<Route exact path="/product/:id" component={Product} />			
		</Switch>
	</Router>
  );
}

export default App;
