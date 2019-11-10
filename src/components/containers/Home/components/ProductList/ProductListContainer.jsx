import React, { Component } from 'react'
import styled from 'styled-components'
import SearchBar from '../SearchBar'
import { List, ListItem, ListItemText, 
         Button, 
         FormControl, InputLabel, MenuItem, Select,
         Icon } from '@material-ui/core'

const ListContainer = styled.div`
    width: 100%;
    height: 100%;
    padding: 1.2rem;
    background:;
`

const ListHeader = styled(List)`
    height: auto;
    background: red;
    display: inline-block;
`

const ProductList = styled(List)`
    font-size: 12px;
`

const ProductName = styled.label`
    font-weight: bold;
`

const ProductPrice = styled.label`
    color: gray;
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

const ProductDetails = styled(FormControl)`
    background-color: gray;
    font-weight: bold;
    padding: 5px;
`

export default class ProductListContainer extends Component {

    showDetails = ({props}) => {
        console.log("Abrindo detalhes")
    } 

    render() {
        const product = {
            name: "Arquivo Deslizante",
            price: "R$ "+"1.700.99",
            enterprise: "Buscapé",
            last_price: "R$ "+"1.300.00",
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
                    <ListItem>
                        <ProductDetails className={classes.formControl}>
                            <InputLabel id="select-label-details">{product.details}</InputLabel>
                            <Select
                            labelId="select-label"
                            id="select-id"
                            value={"Exemplo"}
                            onChange={this.showDetails.bind(this)}
                            >
                            <MenuItem value={10}>CNPJ/CPF</MenuItem>
                            <MenuItem value={20}>Licitação</MenuItem>
                            <MenuItem value={30}>Gráficos</MenuItem>
                            </Select>
                        </ProductDetails>
                    </ListItem>
                    <ListItem>
                        <Icon className="fa fa-logout" color="black" fontSize="medium" />
                    </ListItem>
                </ProductList>
            </ListContainer>
        )
    }
}
