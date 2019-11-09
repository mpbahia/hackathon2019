import React, { Component } from 'react'
import { Grid } from '@material-ui/core';
import ProductListContainer from './components/ProductList/ProductListContainer';
import styled from 'styled-components'

const Container = styled(Grid)`
    width: 100%;
    height: 100%;
`

class HomeContainer extends Component {
    render() {
        return (
            <Container container spacing={3}>
                <ProductListContainer/>
            </Container>
        )
    }
}

export default HomeContainer