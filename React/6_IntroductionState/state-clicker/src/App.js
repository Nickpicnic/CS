import React, { Component } from 'react';
import StateClicker from './State-clicker';
// import './App.css';
import './Clicker.css';

class App extends Component {
  render(){
    return (
      <div className="Clicker">
        <StateClicker />
      </div>
    );
  }
}

export default App;
