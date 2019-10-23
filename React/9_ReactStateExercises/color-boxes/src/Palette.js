import React, { Component } from 'react';
import Box from './Box';

class Palette extends Component {
    static defaultProps = {
        numBoxed: 24,
        allColors: ['purple', 'magenta', 'violet', 'pink']
    }
    render(){
        const boxes = Array.from({length: this.props.numBoxed}).map(
            () => <Box colors={this.props.allColors}/>
        )
        return(
            
            <div className="Color-palette">
                { boxes }
            </div> 
        )
    }
}

export default Palette;