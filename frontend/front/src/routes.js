import React from 'react'
import {BrowserRouter, Route, Switch} from 'react-router-dom'
import Main from './Pages/Main'
import Vigilant from './Pages/Vigilant'


export default function Routes() {
  return (
    <BrowserRouter>
    <Switch>
      <Route exact path="/" component={Main}/>
      <Route path="/vigilant" component={Vigilant}/>
    </Switch>
    </BrowserRouter>
  )


}