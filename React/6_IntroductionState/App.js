import React, { Component } from 'react';
import Game from './Game';
import Game2 from './Game2';
import Demo2 from './Demo2';
import Buttom from './Buttom';
import BrokenClick from './BrokenClick';
import Rando from './Rando';
import './App.css';

class App extends Component {
    render(){
        return (
            <div className="App">
                <Game color="purple" />
                <Demo animal="Bobcat" food="Pineapple" />
                <Rando maxNum={7}/>
            </div>
        )
    }
}

new Demo({animal: "Bobcat"})
export default App;