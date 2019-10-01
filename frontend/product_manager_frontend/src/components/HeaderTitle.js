import React, { Component } from 'react';

class HeaderTitle extends Component {
    render() {
        return (
            <header className="header-title">
                <div className="container">
                    <div className="row">
                        <div className="col-12 py-5 text-center text-danger">
                            <h2>Product Manager Project</h2>
                            <p>Sử dụng Reactjs lấy dữ liệu từ Nodejs</p>
                        </div>
                    </div>
                </div>
            </header>
        );
    }
}

export default HeaderTitle;