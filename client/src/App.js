import React, { Component } from 'react';
import './App.css';
import axios from "axios" ;

class App extends Component {
    state = { menus: [], };
  
    componentDidMount() {
      axios.get("/api/menus")
        .then( res => {
          this.setState({ menus: res.data, });
        })
        .catch( err => {
          console.log(err);
        })
    }
  render() {
    return (
      <div className="App">
<h1> Best Places to Eact in the Village </h1>
        {this.state.menus.map( menu => <h2>{menu.name}</h2>)}
      </div>
    )
};
}

export default App;
