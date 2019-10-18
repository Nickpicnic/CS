import React, { Component } from 'react';
import CounterChild from './Counter-child';

class CounterParent extends Component{
    constructor(props){
        super(props);
        this.state = {count: '5'};
    }
    render(){
        // passing down parent state as a prop to the child
        return(
            <div>
                <CounterChild count={this.state.count} />
            </div>
        );
    }
}