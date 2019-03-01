
/**
 *  src/App.js
 */

// IMPORTS
import React, { Component } from 'react';
// p5 react wrapper
import P5Wrapper from 'react-p5-wrapper';
// p5 sketches
import sketch from './sketches/sketch'
import sketch1 from './sketches/sketch1'
// styles
import './App.css';

// Main app component class
class App extends Component {

  constructor(props) {
		super(props);
		this.state = {
			rotation: 150,
			stateSketch: sketch,
		};
  }
  
	rotationChange(e){
		this.setState({rotation:e.target.value});
  }
  
	pressEvent(){
		this.state.stateSketch === sketch ? this.setState({stateSketch:sketch1}) : this.setState({stateSketch:sketch});
	}

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1>Dino Dash</h1>
        </header>
        <div>  
          <P5Wrapper sketch={this.state.stateSketch} rotation={this.state.rotation}/>
          <input type="range" value={this.state.rotation}  min="0"  max="360" step="1" onInput={this.rotationChange.bind(this)}/>
          <button onClick={this.pressEvent.bind(this)}>Change Sketch</button>
        </div>
      </div>
    );
  }
}

export default App;

/*

	constructor(props) {
		super(props);
		this.state = {
			rotation: 150,
			stateSketch: sketch,
		};
	}

	rotationChange(e){
		this.setState({rotation:e.target.value});
	}

	pressEvent(){
		this.state.stateSketch === sketch ? this.setState({stateSketch:sketch2}) : this.setState({stateSketch:sketch});
	}

	render () {
		return (
			<div>
				<P5Wrapper sketch={this.state.stateSketch} rotation={this.state.rotation}/>
				<input type="range" value={this.state.rotation}  min="0"  max="360" step="1" onInput={this.rotationChange.bind(this)}/>
				<button onClick={this.pressEvent.bind(this)}>Change Sketch</button>
			</div>
		);
	}

*/

