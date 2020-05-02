import React from 'react';
import { Switch, Route } from 'react-router-dom';

//Screens
import Home from './screens/home';
import Clientes from './screens/clientes';
import Veiculos from './screens/veiculos';
import Planos from './screens/planos';
import Relatorios from './screens/relatorios';
import Convenios from './screens/convenios';

const Routes = () => {
    return(
        <Switch>
            <Route exact path='/' component={Home}></Route>
            <Route exact path='/clientes' component={Clientes}></Route>
            <Route exact path='/veiculos' component={Veiculos}></Route>
            <Route exact path='/planos' component={Planos}></Route>
            <Route exact path='/relatorios' component={Relatorios}></Route>
            <Route exact path='/convenios' component={Convenios}></Route>
        </Switch>
    );
}

export default Routes;