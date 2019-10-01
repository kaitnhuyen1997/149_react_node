var express = require('express');
var router = express.Router();


const { Pool, Client } = require('pg')
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'product',
  password: 'postgres',
  port: 5432,
})


router.get('/', function(req, res, next) { });

//get data from node api
router.get('/get-product-list', function(req, res, next) {
  console.log("đây là api lấy dữ liệu cho reactjs");
  
  pool.query('SELECT * FROM product_info order by id DESC',(error, response) => {
    //console.log(response.rows);

    // Website you wish to allow to connect
    res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000');

    // Request methods you wish to allow
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

    // Request headers you wish to allow
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    res.setHeader('Access-Control-Allow-Credentials', true);

    if (error) {
      console.log(error);
    }
    else {
      //console.log(response.rows);
      res.send(response.rows);
    }
    //pool.end();
  })
});
router.get('/add-product', function(req, res, next) {
  res.render('add-product', {});
 });
router.post('/add-product', function(req, res, next) {
   let product_name = req.body.product_name;
   let product_price = req.body.product_price;
   let image = req.body.image;
   pool.query("INSERT INTO product_info (product_name, product_price, image) VALUES ($1, $2, $3)",[product_name,product_price,image], (err,response) => {
    if (err) {
      res.send(err);
      res.send(0);
    }
    else {
      //res.send("insert thanh dong" + product_name + product_price + image);
      res.send(1);
    }
   });
    
 });
module.exports = router;
