--Display products in a customer's shopping cart
SELECT Product.name, CartItem.quantity
FROM Cart
JOIN CartItem
ON Cart.cartID = CartItem.cartID
JOIN Product
ON CartItem.productID = Product.productID
WHERE Cart.userID = 1;

--Display customer orders and purchased products
SELECT User.firstName, User.lastName,
       Orders.orderID, Product.name,
       OrderItem.quantity, OrderItem.price
FROM Orders
JOIN User
ON Orders.userID = User.userID
JOIN OrderItem
ON Orders.orderID = OrderItem.orderID
JOIN Product
ON OrderItem.productID = Product.productID;

--Calculate the total cost of each customer order
SELECT orderID,
       SUM(quantity * price) AS calculatedTotal
FROM OrderItem
GROUP BY orderID;

--Search for a specific product by name
SELECT *
FROM Product
WHERE name = 'Nike Hoodie';

--Search for products using a keyword
SELECT Product.name, Keyword.keyword
FROM Product
JOIN ProductKeyword
ON Product.productID = ProductKeyword.productID
JOIN Keyword
ON ProductKeyword.keywordID = Keyword.keywordID
WHERE Keyword.keyword = 'casual';