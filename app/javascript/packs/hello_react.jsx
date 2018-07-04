// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

class Day extends React.Component {
 constructor(props) {
   super(props);
   this.toggleClass = this.toggleClass.bind(this);
   this.state = {
     active: (localStorage.getItem(`state${this.props.text}${this.props.group}`) === null ? false : (localStorage.getItem(`state${this.props.text}${this.props.group}`) == 'true' ? true : false))
   };

 }

 toggleClass() {
   const currentState = this.state.active;
   this.setState({ active: !currentState });
   localStorage.setItem(`state${this.props.text}${this.props.group}`, !currentState)
 };

 render() {
   const className = this.state.active ? 'not-available' : 'available';
   return (
     <div
       className={className}
       onClick = {this.toggleClass}
       >
       <p>{this.props.text}</p>
     </div>
   )
 }
}

document.addEventListener('DOMContentLoaded', () => {
  var group = document.getElementById('group').innerHTML
  var i;
  for (i = 1; i <= 31; i++) {
    var id =group+i.toString()
    ReactDOM.render(<Day text={`${i}`} group={group} />, document.getElementById(id))
  }
})
