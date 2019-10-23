import React, { Component } from 'react';
import Coin from './Coin';

class FlipCoin extends Component{
    static defaultProps = {
        coinSizes: [
            "https://qph.fs.quoracdn.net/main-qimg-9c81a54813716fccd8e3608ab2f51dcf",
            "https://qph.fs.quoracdn.net/main-qimg-148ae81e6fe0500e130fb547026a9b26"
        ]
    };
    constructor(props){
        super(props);
        this.state = {
            coinSide: undefined,
            totalFlips: 0,
            totalTails: 0,
            totalHeads: 0
        };
        this.handleClick = this.handleClick.bind(this);
    }
    handleClick(){
        this.flip();
    }
    flip(){
        const randomSide = Math.round(Math.random());
        this.setState(st => {
            let newState = {
                ...st,
                coinSide: randomSide,
                totalFlips: st.totalFlips + 1
            }
            randomSide ? newState.totalTails += 1 : newState.totalHeads += 1;
            
            return newState;
        });
    }
    render(){
        return(
            <div className="Coin-board">
                <div className="Coin-tails">
                    <h3>TAILS: {this.state.totalTails}</h3>
                </div>
                <div className="coin-middle">
                    <h1>Let's Flip a Coin!</h1>
                    <h3>Flips: {this.state.totalFlips}</h3>
        { this.state.coinSide !== undefined && <Coin coinSide={this.props.coinSizes[this.state.coinSide]}/> }
                    <button 
                        className="Coin-button"
                        onClick={this.handleClick}
                    >
                        Fleep Me!
                    </button>
                </div>
                <div className="Coin-heads">
                    <h3>HEADS: {this.state.totalHeads}</h3>
                </div>
            </div>
            
        )
    }
}

export default FlipCoin;