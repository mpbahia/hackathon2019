'use strict'
/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */

class CreateToken {
  /**
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Function} next
   */
  async handle ({ request, auth, response}, next) {
    await next()
    const data = request.only(['email', 'password'])
    try {
      await auth.attempt(data.email, data.password)

    } catch (e) {
      return response.status(e.status).send(e)
    }
  }
}

module.exports = CreateToken
