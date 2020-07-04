import  { createReducer } from 'redux-starter-kit'

const productReducer = createReducer([], {
    ADD_PRODUCT: (state, action) => {
      state.push(action.payload)
    },
    SELECT_PRODUCT: (state, action) => {
      const product = state[action.payload.index]
      product.selected = !product.selected
    }
})
  
export default productReducer;