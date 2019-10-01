import React, {Component} from 'react';
import "./App.css";
import HeaderTitle from './components/HeaderTitle';
import Footer from './components/Footer';
import ProductTitle from './components/ProductTitle';
import Product from './components/Product';
import Nav from './components/Nav';
//import AddProduct from './components/AddProduct';
// import axios from 'axios';
//import dataProduct from 'http://localhost:4000/get-product-list';
const axios = require('axios');

const getProductData = () => axios.get('/get-product-list')
                              .then((res) => res.data);

const addProductAction = (product_name,product_price,image) => 
                          (axios.post('/add-product', {product_name,product_price,image})
                            .then((res) => res.data));

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data : null,
      showAddProduct: false,
      product_name : '',
      product_price : '',
      image : ''
    }
  }

  componentWillMount() {
    if (this.state.data === null) {
      // console.log(getProductData());
      
      getProductData().then((res) => {
        //console.log(res);
        
        this.setState({
          data : res
        });
      })
    }
  }

  displayProductData = () => {
    if (this.state.data !== null) {
      //console.log(this.state.data);
      
      return this.state.data.map((value, key) => {
        return (
          <Product
          key = {key}
          product_name = {value.product_name}
          product_price ={value.product_price}
          image = {value.image}
          />
        );
      })
    } 
  }

  handleShowAddProductClick = () => {
    this.setState({
      showAddProduct : !this.state.showAddProduct
    });
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
      //console.log(JSON.stringify(this.state));
      let {product_name, product_price, image} = this.state;
      let dataTemp = [];
      let item = {};
      item.product_name = product_name;
      item.product_price = product_price;
      item.image = image;
      dataTemp = this.state.data
      //console.log(dataTemp);

      if (product_name !== '' && product_price !== '' && image !== '') {
        dataTemp.push(item);
        console.log(dataTemp);
        this.setState({
          data: dataTemp
        })
      }
      else {
        console.log('Vui lòng nhập đủ thông tin');
      }
      
      addProductAction(product_name, product_price, image)
          .then((res) => {console.log(res)})
  }

  handleShowAddProduct = () => {
    if (this.state.showAddProduct === true) {
      // return (<AddProduct/>);
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
              <button onClick={() => this.handleSubmitClick()} type="reset" className="btn btn-primary btn-block mt-4">Thêm</button>
            </form> 
          </div>
        </div>
      );
    }
  }

  render() {
    // console.log("data : ");
    
    // console.log(this.state.data);
    
    // // Make a request for a user with a given ID
    // axios.get('http://localhost:4000/get-product-list')
    // .then(function (response) {
    //   // handle success
    //   console.log(response.data);
    // })
    // .catch(function (error) {
    //   // handle error
    //   console.log(error);
    // })
    // .finally(function () {
    //   // always executed
    // });
    
    return (
      <div>
        <Nav/>
        <HeaderTitle/>
        <div className="product-list pb-4">
          <div className="container">
            <div className="row product-title">
              <ProductTitle handleShowAddProductClick={() => this.handleShowAddProductClick()}/>
            </div>
            {/* end product-title */}
  
            <div className="row product-slist">
              
              {/* show <AddProduct/> */}
              {this.handleShowAddProduct()}

              {/* show Product */}
              {this.displayProductData()}

            </div>
            {/* end product-list */}
  
          </div>
        </div>
        <Footer/>
      </div>
    );
  }

}

export default App;
