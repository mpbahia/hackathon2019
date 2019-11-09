'use strict'

class LoginController {

  async store ({request, response, auth}) {
    const {email, password} = request.only(['email', 'password'])

    await auth.attempt(email, password)

    return response.send({message:"success!"})
  }

  async destroy ({response, auth}) {
    try {
      await auth.logout()
      return response.send({message:"success!"})
    } catch (e) {
      return response.send(e)
    }
  }
}

module.exports = LoginController
