import React, { Component } from 'react'
import styled from 'styled-components'
import Paper from '@material-ui/core/Paper';
import InputBase from '@material-ui/core/InputBase';
import IconButton from '@material-ui/core/IconButton';
import SearchIcon from '@material-ui/icons/Search';

const ContainerSearch = styled(Paper)`
    font-size: 11px;
`

export default class SearchBar extends Component {
    render() {
        return (
            <ContainerSearch square={"false"} component="form" className="container-search" elevation={0}>
                <IconButton type="submit" className="icon-search" aria-label="search">
                    <SearchIcon />
                </IconButton>
                <InputBase
                    className="product-input"
                    placeholder="Produtos"
                    inputProps={{ 'aria-label': 'procure produtos' }}
                />
            </ContainerSearch>
        )
    }
}
