import React, { Component } from 'react';

class ColorToggle extends Component {
    static defaultProps = {
        colors: [
            '#e2c18d', '#c585c0', '#82d7f7', '#4fae91'
        ]
    }

    constructor(props){
        super(props);
        this.state = {bodyBackgroundColor: 'grey'};
        this.handleToggle = this.handleToggle.bind(this);
    }

    handleToggle(color){
        this.changeBackground(color);
    }

    changeBackground(newColor){
        this.setState({bodyBackgroundColor: newColor});
    };

    render(){
        let buttons = this.props.colors.map((color) => {
                return(<button 
                    className="toggle-button"
                    style={{backgroundColor: color}}
                    onClick={this.handleToggle.bind(this, color)}>
                    Click Me!
                </button>
            )
        });
        return(
            <div    className="Background" 
                    style={{backgroundColor: this.state.bodyBackgroundColor}}>
                {buttons} 
            </div>
        )
    }
}

export default ColorToggle;
