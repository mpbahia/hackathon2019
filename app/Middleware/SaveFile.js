'use strict'
/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */


const Helpers = use('Helpers')
const File = use('App/Models/File')
class SaveFile {
  async handle ({ request, response }, next) {
    try {
      if (!request.file('fileId')) { return await next()}

      const upload = request.file('fileId', {
        types:['video', 'image', 'audio'],
      })
      const fileErr = upload.error()

      if (Object.entries(fileErr).length === 0 && fileErr.contructor() === Object) {
        return response.error(400).send(fileErr)
      }
      const sysname = `${Date.now()}.${upload.subtype}`
      await upload.move(Helpers.tempPath('uploads'), {name: sysname})

      if (!upload.moved()) {
        return response.status(500).send(upload.error())
      }

      const file = await File.create({
        file:sysname,
        name:upload.clientName,
        type:upload.type,
        subtype:upload.subtype
      })

      const { id } = file
      request.file_id = id
      await next()
    } catch (e) {
      return response.status(e.status).send(e)
    }
  }
}

module.exports = SaveFile
