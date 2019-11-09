'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class DelationSchema extends Schema {
  up () {
    this.create('delations', (table) => {
      table.increments()
      table.string('description')
      table.string('url')
      table.string('coordinates')
      table.string('context')
      table
        .integer('number_id')
        .unsigned()
        .references('id')
        .inTable('final_users')
        .onDelete('SET NULL')
        .onUpdate('CASCADE')
      table
        .integer('file_id')
        .unsigned()
        .references('id')
        .inTable('files')
        .onDelete('CASCADE')
        .onUpdate('CASCADE')
      table.boolean('seen').defaultTo(false)
      table.timestamps()
    })
  }

  down () {
    this.drop('delations')
  }
}
// 1573169985810
// de 1573169955198
module.exports = DelationSchema
