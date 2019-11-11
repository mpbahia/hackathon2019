import { configureStore } from 'redux-starter-kit'
import productReducer from './reducers/productReducer'

const store = configureStore({
  reducer: {
    products: productReducer
  }
})

export default store