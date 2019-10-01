import React, { Component } from 'react';

class Nav extends Component {
    render() {
        return (
            <nav className="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
                <div className="container">
                    <a className="navbar-brand" href="/">Product Manager</a>
                </div> 
            </nav>
        );
    }
}

export default Nav;