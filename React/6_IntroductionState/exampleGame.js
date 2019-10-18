class Game extends Component {
    constructor(props) {
        super(props);
        this.state = {
            player: 'Whiskey',
            score: 0
        };
    }

    render(){
        return (
            <div>
                <h1>Battlership</h1>
                <p>Current Player: {this.state.player}</p>
                <p>Score: {this.state.score}</p>
            </div>
        );
    }
}