import React, { Component } from 'react';
import Ball from './Ball';

class Lottery extends Component{
    static defaultProps = {
        title: 'Lotto',
        maxBalls: 6,
        maxNum: 40
    }
    constructor(props){
        super(props);
        this.state = {numbers: Array.from({length: this.props.maxBalls})};
        this.handleClick = this.handleClick.bind(this);
    }
    generate(){
        this.setState(curState => ({
            numbers: curState.numbers.map(
                n => Math.floor(Math.random() * this.props.maxNum) + 1
            )
        }));
    }
    handleClick(){
        this.generate();
    }
    render(){
        return(
            <div className="lottery-card-inside">
                <h3 className="lottery-title">{this.props.title}</h3>
                <div>
                    {this.state.numbers.map(n => (
                        <Ball num={n} />
                        ))}        
                </div>        
                <button 
                    className="generate-button"
                    onClick={this.handleClick}
                >
                    Generate
                </button>
            </div>
        )
    }
}
export default Lottery;