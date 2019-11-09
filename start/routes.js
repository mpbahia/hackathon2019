'use strict'

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.on('/').render('welcome')


Route.group(() =>
{
  Route.post('user', 'UserController.store').middleware(['createToken'])
  Route.post('login', 'LoginController.store')
}).middleware('guest')

// Route.resource('user', 'UserController').except(['store', 'index', 'create', 'edit', 'show'])
// Vigilante
Route.group(() => {
  Route.put('user', 'UserController.update')
  Route.delete('user', 'UserController.destroy')
  Route.get('user', 'UserController.show')

  Route.delete('delation', 'DelationController.destroy')
  Route.get('delation/:id', 'DelationController.show')
  Route.get('delation', 'DelationController.index')
  Route.delete('logout', 'LoginController.destroy')
}).middleware('auth')

// Usuário e Denúncia
Route.group(() => {
  Route.post('/finalUser', 'FinalUserController.store')
  Route.post('/delation', 'DelationController.store').middleware(['saveFile'])
})