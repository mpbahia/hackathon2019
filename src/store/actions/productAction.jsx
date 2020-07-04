import { createAction } from 'redux-starter-kit'

const addProduct = createAction('ADDED_PRODUCT')
/** 
 * To add product from JSON
 * addProduct({ text: JSON.stringfy(product) })
 * */ 

const selectProduct = createAction('SELECT_PRODUCT')
/** 
 * When selecting the product
 * selectProduct({ text: JSON.stringfy(product) })
 * */ 

export default (addProduct, selectProduct)