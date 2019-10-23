import React, { Component } from 'react';

class Coin extends Component{
    render(){
        return(
            <div>
               <img
                    className="Coin"
                    alt="Coin"
                    src={this.props.coinSide}
                />
            </div>
        )
    }
}

export default Coin;