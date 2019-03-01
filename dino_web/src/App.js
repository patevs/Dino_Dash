
/**
 *  src/App.js
 */

// IMPORTS
import React, { Component } from 'react';
// p5 react wrapper
import P5Wrapper from 'react-p5-wrapper';
// p5 sketch
import sketch from './sketch'
// styles
import './App.css';

// Main app component class
class App extends Component {

  rotation = 24;

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1>Dino Dash</h1>
        </header>
        <div>
          <P5Wrapper sketch={sketch} rotation={this.rotation} />
        </div>
      </div>
    );
  }
}

export default App;
