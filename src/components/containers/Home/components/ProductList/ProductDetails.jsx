import React from 'react'
import { Button, 
         MenuItem } from '@material-ui/core'
import styled from 'styled-components'

const ProductDetailsContainer = styled.div`
    font-weight: bold;
    padding: 5px;
    padding: 12px;
    border-radius: 70px;
    border: none;
`
export function ProductDetails() {
    const [views, setViews] = React.useState('');
    const [open, setOpen] = React.useState(false);
    const handleChange = event => {
        setViews(event.target.value);
    };
    
    const handleCloseDetails = () => {
        setOpen(false);
    };
    
    const handleOpenDetails = () => {
        setOpen(true);
    };

    return (
        <ProductDetailsContainer>
            <Button onClick={handleOpenDetails}>
                Detalhes
            </Button>
            <ProductDetails
                labelId="details-open-select-label"
                open={open}
                onClose={handleCloseDetails}
                onOpen={handleOpenDetails}
                value={views}
                onChange={handleChange}
                >
                <MenuItem value="">
                    <em>Detalhes</em>
                </MenuItem>
                <MenuItem value={10}>CNPJ/CPF</MenuItem>
                <MenuItem value={20}>Licitação</MenuItem>
                <MenuItem value={30}>Gráficos</MenuItem>
            </ProductDetails>
        </ProductDetailsContainer>
    )
}