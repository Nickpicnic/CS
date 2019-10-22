import React, { Component } from 'react';
import Lottery from './Lottery';
import './App.css';

class App extends Component {
  render(){
    return(
      <div className="lottery-card-outside"> 
        <Lottery />
        <Lottery title='Mini Daily' maxNum={10} maxBalls={4}/>
      </div>
      
    )
  }
}

export default App;
