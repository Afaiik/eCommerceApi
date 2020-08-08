import React from 'react';
import 'App.css';
import Home from 'pages/Home/Index'
import Login from 'pages/Login/Index'
import Register from 'pages/Register/Index'
import {Router, Route, Switch} from 'wouter'


function App() {
  return (
	<Router>
		<Switch>
			<Route exact path="/" component={Home} />
			<Route exact path="/login" component={Login} />
			<Route exact path="/register" component={Register} />				
		</Switch>
	</Router>
  );
}

export default App;
