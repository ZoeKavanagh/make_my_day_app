import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

const test = <h1>Test</h1>

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello name="React" />,
    document.body.appendChild(document.createElement('div')),
  )
})
