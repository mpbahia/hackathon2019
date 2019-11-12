import React, { Component } from 'react'
import styled from 'styled-components'
import Icon from '@material-ui/core/Icon'
import { Input } from '@material-ui/core'

const ContainerSearch = styled.div`
    display: inline-block;
    width: 100%;
    padding: 5px;
    padding-left: 9px;
    padding-right: 9px;
    border-radius: 50px;
    background: white;
`

export default class SearchBar extends Component {
    render() {
        return (
            <ContainerSearch>
                <Icon className="fa fa-search" color="black" fontSize="medium" />
                <Input className="search-box-input" defaultValue="Digite CNPJ/Nome da Empresa" /> 
            </ContainerSearch>
        )
    }
}
