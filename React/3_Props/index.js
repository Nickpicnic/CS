class App extends React.Component {
    render(){
        return(
            <div>
                <Hello 
                    to="Ringo" 
                    from="Paul"
                    num={3}
                    data={[1,2,3,4,5]}
                    />
            </div>
        )
    }
} 

ReactDOM.render(<App/>, document.getElementById('root'));