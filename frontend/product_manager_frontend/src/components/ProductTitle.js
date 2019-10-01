import React, { Component } from 'react';

class ProductTitle extends Component {
    //props.handleShowAddProductClick
    render() {
        return (
            <div className="col-12 pb-4">
                <div className="col-12 pb-4">
                    <h4> 
                        <i className="fa fa-angle-double-right" /> Hiển thị sản phẩm
                    </h4>
                    <h4> <button onClick={() => this.props.handleShowAddProductClick()} className="btn btn-primary"><i className="fa fa-plus mr-2" />Thêm mới</button></h4>
                </div>
            </div>
        );
    }
}

export default ProductTitle;