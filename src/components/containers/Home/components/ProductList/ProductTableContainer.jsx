import React, { Component } from 'react'
import { withStyles } from '@material-ui/core/styles';
import styled from 'styled-components'
import SearchBar from '../SearchBar'
import Fab from '@material-ui/core/Fab';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';
import Box from '@material-ui/core/Box';

const BoxContainer = styled(Box)`
    overflow: hidden;
    width: 80%;
    margin-left: 260px;
    margin-top: 30px;
    -webkit-box-shadow: 0px 0px 15px -7px rgba(0,0,0,0.2);
    -moz-box-shadow: 0px 0px 15px -7px rgba(0,0,0,0.2);
    box-shadow: 0px 0px 15px -7px rgba(0,0,0,0.2);
`
const ProductTable = styled(Paper)`
`
const TableContainer = styled(Table)`
    width: 100%;
    font-size: 12px;
`
const StyledTableCell = styled(TableCell)`
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
        
        function createData(name, price, enterprise, last_price, date, details) {
            return { name, price, enterprise, last_price, date, details};
        }
  

        const rows = [
            createData(product.name, product.price, product.enterprise, product.last_price, product.date, product.details),
            createData(product.name, product.price, product.enterprise, product.last_price, product.date, product.details),
            createData(product.name, product.price, product.enterprise, product.last_price, product.date, product.details),
            createData(product.name, product.price, product.enterprise, product.last_price, product.date, product.details),
            createData(product.name, product.price, product.enterprise, product.last_price, product.date, product.details),
        ];
        
        return (
            <BoxContainer borderRadius={8}>
            <ProductTable className="ProductContainer">
            <TableContainer className="ProductTable" aria-label="products table">
                <TableHead>
                <TableRow>
                    <StyledTableCell primary><SearchBar/></StyledTableCell>
                    <StyledTableCell align="right">Preço</StyledTableCell>
                    <StyledTableCell align="right">Empresa</StyledTableCell>
                    <StyledTableCell align="right">Último Preço</StyledTableCell>
                    <StyledTableCell last align="right">Data</StyledTableCell>
                    <StyledTableCell last align="right"> </StyledTableCell>
                </TableRow>
                </TableHead>
                <TableBody>
                { rows.map(row => (
                    <StyledTableRow key={row.name}>
                    <StyledTableCell component="th" scope="row">
                        {row.name}
                    </StyledTableCell>
                    <StyledTableCell align="right">{row.price}</StyledTableCell>
                    <StyledTableCell align="right">{row.enterprise}</StyledTableCell>
                    <StyledTableCell align="right">{row.last_price}</StyledTableCell>
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
            </BoxContainer>
        )
    }
}
