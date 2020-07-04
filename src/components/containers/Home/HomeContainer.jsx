import React, { Component } from 'react'
import { Container, Divider,
         List, ListItemText, ListItem,
         Drawer, Grid, Avatar } from '@material-ui/core';
import ProductTableContainer from './components/ProductList/ProductTableContainer';
import AccountCircleIcon from '@material-ui/icons/AccountCircle';
import styled from 'styled-components'

const AppDrawer = styled(Drawer)`
    & .MuiDrawer-paper{
        width: 300px;
        flex-shrink: 0;
        color: white;
        background-color: black;
    }
`
const ContentContainer = styled(Container)`
    width: 100%;
    height: 100%;
`
const Toolbar = styled.div`
    height: 100px;
    background-color: white;
`
const Account = styled(Grid)`
    padding: 30px;
    font-weight: bold;
    &:last-child{
        font-size: 12px;
        font-weight: normal;
    }
`
const AccountText = styled(List)`
    font-size: 14px;
`
const Title = styled(ListItem)`
`
const Subtitle = styled(ListItem)`
    font-size: 12px;
    color: gray;
    margin-top: -10px;
`
const Content = styled.main`
    width: 100%;
    height: 100%;
    margin-left: 0px;
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
                    <Account container justify="left" alignItems="left">
                        <Avatar alt="Remy Sharp" src="/static/images/avatar/1.jpg" className={"user-avatar"} />
                        <AccountText>
                            <Title>
                                <b>Wesley Nunes </b> 
                            </Title>
                            <Subtitle>
                                Consultor
                            </Subtitle>
                        </AccountText>
                    </Account>
                    <Divider />
                    <List>
                    {['NFC-e', 'Ranking', 'Notificações', 'Projetos'].map((text, index) => (
                        <ListItem button key={text}>
                        <ListItemText primary={text} />
                        </ListItem>
                    ))}
                    </List>
                    <Divider />
                    <List>
                        <ListItem button key={"Sair"}>
                        <ListItemText primary={"Sair"} />
                        </ListItem>
                    </List>
                </AppDrawer>
                <Content className={"content"}>
                    <Toolbar className={"toolbar"}/>
                    <ProductTableContainer/>
                </Content>
            </ContentContainer>
        )
    }
}

export default HomeContainer