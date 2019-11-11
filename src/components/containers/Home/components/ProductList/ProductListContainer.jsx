import React, { Component } from 'react'
import styled from 'styled-components'
import SearchBar from '../SearchBar'
import { List, ListItem, ListItemText, 
         Button,
         Icon } from '@material-ui/core'
import { ProductDetails } from './ProductDetails'

const ListContainer = styled.div`
    display: block;
    width: 100%;
    height: 100%;
    padding: 1.2rem;
`

const ListHeader = styled(List)`
    display: flex;
    flex-direction: row;
    padding: 0;
    font-size: 10px;

`

const ProductList = styled(List)`
    display: flex;
    flex-direction: row;
    padding: 0;
    width: 100%;
    font-size: 12px;
`

const ProductName = styled.label`
    font-weight: bold;
`

const ProductPrice = styled.label`
`

const ProductEnterprise = styled.label`
    color: gray;
`
const ProductLastPrice = styled(Button)`
    width: auto;
    padding: 2px;
    background: yellow;
`

const ProductDate = styled.label`
    color: gray;
`
    
    export default class ProductListContainer extends Component {

    showDetails = ({props}) => {
        console.log("Abrindo detalhes")
    } 
    
    
    render() {
        const product = {
            name: "Arquivo Deslizante",
            price: "R$ 1.700.99",
            enterprise: "Buscapé",
            last_price: "R$ 1.300.00",
            date: "08 Out 2019",
            details: "Detalhes",
        }
        
        return (
            <ListContainer>
                <ListHeader className="HeaderList-Col" container spacing={3}>
                    <ListItem>
                        <SearchBar/>
                    </ListItem>
                    <ListItem>
                        <ListItemText
                            primary="Preço"
                        />
                    </ListItem>
                    <ListItem>
                        <ListItemText
                            primary="Empresa"
                        />
                    </ListItem>
                    <ListItem>
                        <ListItemText
                            primary="Último Preço"
                        />
                    </ListItem>
                    <ListItem>
                        <ListItemText
                            primary="Data"
                        />
                    </ListItem>
                </ListHeader>
                <ProductList>
                    <ProductName>
                        <ListItemText
                            primary={product.name}
                        />
                    </ProductName>
                    <ProductPrice>
                        <ListItemText
                            primary={product.price}
                        />
                    </ProductPrice>
                    <ProductEnterprise>
                        <ListItemText
                            primary={product.enterprise}
                        />
                    </ProductEnterprise>
                    <ProductLastPrice>

                    </ProductLastPrice>
                    <ListItem>
                        <ProductDate />
                    </ListItem>
                    <ListItem>
                        <ProductDetails />
                    </ListItem>
                    <ListItem>
                        <Icon className="fa fa-logout" color="black" fontSize="medium" />
                    </ListItem>
                </ProductList>
            </ListContainer>
        )
    }
}
