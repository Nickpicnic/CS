import React, { Component } from 'react';

class StateClicker extends Component {
    constructor(props){
        super(props);
        this.state = { num: 1 };
        this.getRandom = this.getRandom.bind(this);
    }
    getRandom(){
        // gen a new random
        let rand = Math.floor(Math.random() * 10) + 1;
        // update state
        this.setState({num: rand});
    }
    render(){
        return (
            <div>
                <h1>This is My State Clicker Exercise!</h1>
                <h3>Number is: { this.state.num }</h3>
                {(this.state.num === 7) ? <h3>You Win!</h3> : <button onClick={this.getRandom}>Click Me!</button>} 
            </div>
        )
    }
}

export default StateClicker;