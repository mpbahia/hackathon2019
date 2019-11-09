'use strict'

const Delation = use('App/Models/Delation')

class DelationController {
  async index ({ response }) {
    const delations = await Delation.all()

    return response.send(delations)
  }

  async store ({ request, response }) {
    const data = request.only(['description', 'location', 'link', 'context'])

    const newDelation = await Delation.create({
      ...data,
      file_id:request.file_id
    })


    return response.send(newDelation)
    // return response.send({
    //   message:"success!"
    // })
  }

  async show ({ params, response}) {
    const delation = await Delation.findOrFail(params.id)


    return response.send(delation)
  }

  async destroy ({ params, response }) {
    const delation = await Delation.findOrFail(params.id)

    await delation.delete()

    return response.send(delation)
  }
}

module.exports = DelationController
