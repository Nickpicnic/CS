import React, { Component } from 'react';
import Item from './Item';

class ItemList extends Component{
    constructor(props){
        super(props);
        this.state = {
            numbers: [1, 2, 3, 4, 5]
        };
        this.remove = this.remove.bind(this);
    }

    remove(element){
        this.setState(st => ({
            numbers: this.state.numbers.filter(number => number !== element)
        }));
    }

    render(){
        let nums = this.state.numbers.map(num => (
            <Item value={num} 
            key={num}
            remove={this.remove}/>
        ));
        return(
            <div>
                <ul>{nums}</ul>
            </div>
        )
    };
}

export default ItemList;