

var inquirer = require('inquirer');
var mysql = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  port     :  3306,
  password : 'nike',
  database : 'bamazon_db'
});


connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  start();
});





var start = function() {
    connection.query('SELECT * FROM products', function(err, res) {
        
        var choiceArray = [];
        for (var i = 0; i < res.length; i++) {
            choiceArray.push(res[i].productName);
        }
        inquirer.prompt([{
            name: 'item',
            type: 'input',
            message: 'Which item would you like to buy? (Enter the Item ID)'
        },

        {
            name: 'quantity',
            type: 'input',
            message: 'How many would you like to buy?'
        }]).then(function(answer) {
            console.log(answer);
            var itemID = answer.item;
            console.log(itemID);

            var chosenItem = res[itemID-1];
            console.log(chosenItem);

            var newQuantity = chosenItem.stockQuantity;

            if (newQuantity = 0) {
                connection.query('UPDATE products SET ? WHERE itemID = ?', [{ stockQuantity: newQuantity }, itemID]);
                start();
            } else {
                console.log('There are not enough in stock for you to purchase that many ');
                start();
            }
        })
    })
}