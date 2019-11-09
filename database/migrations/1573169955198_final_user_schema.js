'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class FinalUserSchema extends Schema {
  up () {
    this.create('final_users', (table) => {
      table.increments()
      table.string('number', 60).notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('final_users')
  }
}

module.exports = FinalUserSchema
//fu 1573169985810