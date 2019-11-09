'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */

/**
 * Resourceful controller for interacting with finalusers
 */
const FinalUser = use('App/Models/FinalUser')
class FinalUserController {
  async store ({ request }) {
    const data = request.only(['contactNumber'])

    const finalUser = await FinalUser.create(data)

    return finalUser
  }
}

module.exports = FinalUserController
