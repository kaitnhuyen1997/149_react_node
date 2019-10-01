import React, { Component } from 'react';
const axios = require('axios');
const addProductAction = (product_name,product_price,image) => 
        (axios.post('/add-product', {product_name,product_price,image})
            .then((res) => res.data));
class AddProduct extends Component {
    constructor(props, context) {
        super(props, context);
        this.state = {
            product_name : '',
            product_price : '',
            image : ''
        }
    }
    isChange = (event) => {
        //console.log(event.target.name);
        //console.log(event.target.value);
        let name = event.target.name;
        let value = event.target.value;
        this.setState({
            [name]:value
        });
    }
    handleSubmitClick = () => {
        console.log(JSON.stringify(this.state));
        let {product_name, product_price, image} = this.state;
        addProductAction(product_name, product_price, image)
            .then((res) => {console.log(res)})
    }
    render() {
        return (
            <div className="col-lg-4 pb-4">
                <div className="card card-add p-4">
                    <form>
                        <div className="form-group">
                            <label htmlFor="product_name">Tên sản phẩm</label>
                            <input onChange={(event)=> this.isChange(event)} type="text" name="product_name" id="product_name" className="form-control" placeholder="Nhập tên sản phẩm" />
                        </div>
                        <div className="form-group">
                            <label htmlFor="product_price">Giá</label>
                            <input onChange={(event)=> this.isChange(event)} type="text" name="product_price" id="product_price" className="form-control" placeholder="Nhập giá sản phẩm" />
                        </div>
                        <div className="form-group">
                            <label htmlFor="image">Hình ảnh</label>
                            <input onChange={(event)=> this.isChange(event)} type="text" name="image" id="image" className="form-control" placeholder="Nhập link ảnh sản phẩm" />
                        </div>
                        <button onClick={() => this.handleSubmitClick()} type="reset" className="btn btn-primary btn-block">Thêm</button>
                    </form>  
                </div>
            </div>
        );
    }
}

export default AddProduct;