import React, { Component } from 'react';

class Product extends Component {
    render() {
        return (
            <div className="col-sm-6 col-lg-4 pb-4">
                <div className="card">
                    <img className="card-img-top" src={this.props.image} alt="" />
                    <div className="card-body">
                        <h6 className="card-title float-left">{this.props.product_name}</h6>
                        <p className="card-text float-right">
                            <span className="price">{this.props.product_price} đ</span>
                        </p>
                    </div>
                </div>
            </div>
        );
    }
}

export default Product;