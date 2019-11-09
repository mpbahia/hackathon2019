'use strict'


const User = use('App/Models/User')
class UserController {
  async store ({ request, response }) {
    const data = request.only(['username', 'password', 'workCode', 'cpf', 'email'])

    const user = await User.create(data)

    return response.send(user)
  }

  async show ({ response, auth}) {
    const usrId = auth.authenticatorInstance._instanceUser['$attributes'].id
    const user = await User.findOrFail(usrId)

    return response.send(user)
  }

  async update ({ auth, request, response }) {
    const usrId = auth.authenticatorInstance._instanceUser['$attributes'].id
    const user = await User.findOrFail(usrId)
    const data = request.only(['username', 'password', 'workCode', 'cpf', 'email'])
    user.merge(data)
    await user.save()

    return response.send(user)
  }

  async destroy ({ auth, response }) {
    const usrId = auth.authenticatorInstance._instanceUser['$attributes'].id
    const user = await User.findOrFail(usrId)

    await user.delete()

    return response.send(user)
  }
}

module.exports = UserController
