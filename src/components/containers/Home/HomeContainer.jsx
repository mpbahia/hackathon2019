import React, { Component } from 'react'
import { Container, Divider,
         List, ListItemText, ListItem,
         Drawer } from '@material-ui/core';
import { makeStyles } from '@material-ui/core/styles';
import ProductTableContainer from './components/ProductList/ProductTableContainer';
import styled from 'styled-components'

const themeMixin = {
    sectiontheme: makeStyles(theme => theme.mixins.toolbar)
}

const AppDrawer = styled(Drawer)`
    & .MuiDrawer-paper{
        width: 300px;
        flex-shrink: 0;
    }
`

const ContentContainer = styled(Container)`
    width: 100%;
    height: 100%;
    padding: 50px;
`
const Toolbar = styled.div`
    ${props => styled(themeMixin.sectiontheme)}   
`
const Content = styled.main`
    
`

class HomeContainer extends Component {
    render() {
        return (
            <ContentContainer>
                <AppDrawer
                    className="drawer-home"
                    variant="permanent"
                    classes={{
                        paper: "drawer-paper",
                    }}
                    anchor="left">
                    <div className="toolbar-home" />
                    <Divider />
                    <List>
                    {['Inbox', 'Starred', 'Send email', 'Drafts'].map((text, index) => (
                        <ListItem button key={text}>
                        <ListItemText primary={text} />
                        </ListItem>
                    ))}
                    </List>
                    <Divider />
                    <List>
                    {['All mail', 'Trash', 'Spam'].map((text, index) => (
                        <ListItem button key={text}>
                        <ListItemText primary={text} />
                        </ListItem>
                    ))}
                    </List>
                </AppDrawer>
                <Content className={"content"}>
                    <Toolbar className={"toolbar"}>
                        <ProductTableContainer/>
                    </Toolbar>
                </Content>
            </ContentContainer>
        )
    }
}

export default HomeContainer