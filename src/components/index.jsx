import React from 'react';
import HomeContainer from './containers/Home/HomeContainer';
import styled from 'styled-components'

function App() {
  const rootContainer = styled.div`
    padding: 0px;
    background-color: #EFEAE4;
  `
  return (
    <rootContainer className="App">
      <HomeContainer/>
    </rootContainer>
  );
}

export default App;
