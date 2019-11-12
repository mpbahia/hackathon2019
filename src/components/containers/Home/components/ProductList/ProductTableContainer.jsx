import React, { Component } from 'react'
import { withStyles, makeStyles } from '@material-ui/core/styles';
import styled from 'styled-components'
import SearchBar from '../SearchBar'
import Fab from '@material-ui/core/Fab';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';

//import { ProductDetails } from './ProductDetails'

const ProductTable = styled(Paper)`
    width: 80%;
    margin-left: 300px;
    border-radius: 40px;
    overflow: hidden;
`
const TableContainer = styled(Table)`
    width: 100%;
    font-size: 12px;
`
const StyledTableCell = styled(TableCell)`
    background-color:${props => props.primary ? "black" : "white"};
    color:${props => props.primary ? "white" : "black"};
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

        const StyledTableRow = withStyles(theme => ({
            root: {
            '&:nth-of-type(odd)': {
                backgroundColor: theme.palette.background.default,
            },
            },
        }))(TableRow);
        
        function createData(name, enterprise, price, date, details) {
            return { name, enterprise, price, date, details };
        }
  

        const rows = [
            createData(product.name, product.enterprise, product.price, product.date, product.details),
            createData(product.name, product.enterprise, product.price, product.date, product.details),
            createData(product.name, product.enterprise, product.price, product.date, product.details),
            createData(product.name, product.enterprise, product.price, product.date, product.details),
            createData(product.name, product.enterprise, product.price, product.date, product.details),
        ];
        
        return (
            <ProductTable className="ProductContainer">
            <TableContainer className="ProductTable" aria-label="products table">
                <TableHead>
                <TableRow>
                    <StyledTableCell primary >Preço</StyledTableCell>
                    <StyledTableCell primary align="right">Empresa</StyledTableCell>
                    <StyledTableCell primary align="right">Último Preço</StyledTableCell>
                    <StyledTableCell primary align="right">Data</StyledTableCell>
                    <StyledTableCell primary align="right"> </StyledTableCell>
                </TableRow>
                </TableHead>
                <TableBody>
                { rows.map(row => (
                    <StyledTableRow key={row.name}>
                    <StyledTableCell component="th" scope="row">
                        {row.name}
                    </StyledTableCell>
                    <StyledTableCell align="right">{row.enterprise}</StyledTableCell>
                    <StyledTableCell align="right">{row.price}</StyledTableCell>
                    <StyledTableCell align="right">{row.date}</StyledTableCell>
                    <StyledTableCell align="right"> 
                        <Fab
                            variant="extended"
                            size="medium"
                            color="primary"
                            aria-label="add"
                            className="button-details"
                            >
                            {row.details}
                        </Fab>
                    </StyledTableCell>
                    </StyledTableRow>
                )) }
                </TableBody>
            </TableContainer>
            </ProductTable>
        )
    }
}
