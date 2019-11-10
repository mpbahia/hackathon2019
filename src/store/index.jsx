import { configureStore } from 'redux-starter-kit'
import productReducer from './productReducer'

const store = configureStore({
  reducer: {
    products: productReducer
  }
})

export default store