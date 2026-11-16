# LexiSearch Database

## Main Idea
We created the database which will store the information needed for our website. Since LexiSearch allows customers to search for products and purchase items, we needed to store information about products, inventory, customers, shopping carts, and orders. We decided to use SQLite for our database because it's simple and organizes information using tables. We also used DB (database) browser for SQLite which helped create our tables and test our SQL queries. 

## 1. Creating The Database 
We used SQLite and DB Browser to create our database called LexiSearch.db using DB browser for SQLite. Inside the database we created nine tables that represent the main information that our website will need. 
### Product - stores product information such as the names, categories, colors, sizes, price, descriptions, and brands
### Inventory - keeps tracks of how many products are available 
### keyword - stores keywords that customers use when searching for products
### ProductKeyword - connects products to their keywords 
### User - stores customer and admin account info
### Cart - Represents customer's shopping cart
### CartItem - Stores products and quantities which is added to a cart
### Orders - stores customer orders which will include dates, total, and the status
### OrderItem - stores the individual products included in each order

## 2. So how do These Tables Connect?
We used primary keys (PK) and foreign keys (FK) to create relationships between the tables 
The primary key is used to identify a specific record in a table, while a foreign key connects information from one table to another.

An example of this that we did in our SQLite is that the Product table has productID that identifies each product. The Inventory table uses that productID to connect the available quantity to the correct product. 

- Product and Inventory: Connects each product to its available quantity

- Product and Keyword: Uses the ProductKeyword table to connect products with different search keywords.

- User and Cart: Connects a customer to their shopping cart

- User and Orders: Connects customers to the orders they have placed

- Orders and OrderItem: Connects an order to the products that is purchased

- Product and OrderItem: Identifies which products belong to an order

Product and Keyword is the most important since that's our main use of LexiSearch. A product can have multiple keywords, and the same keyword can belong to multiple products (many-to-many relationship) which is why we created the ProductKeyword table. 

## 3. Sample Data
When we created the table, we added a sample information to test how the database would work. Like for example that we used was...

| Product | Category | Color | Size | Price |

Nike hoodie, Hoodies, Black, Medium, $24.99

Adidas T-Shirt, Shirts, Red, Small, $20.99

Levi's Jeans, Jeans, Blue, Large, $12.99

We also added inventory quantities to keep track of the products available. For the User table, we created sample customer and admin records, we also added shopping cart information, orders, and keywords.

This is so we could test if the tables were connected correctly and if our SQL queries would return the information we wanted 

## 4. SQL Queries 
This is the file we created such as queries.sql, it contains the 5 SQL queries that demonstrate different features of our LexiSearch database. 

### Query 1 - Display Products in a shopping cart
Our first query retrieves the products that a customer has added to their shopping cart. We connected Cart, CartItem, and Product tables using SQL JOIN statements.

This demonstrates how our database can retrieve the products and quantities stored in a customer's cart

### Query 2 - Display Customer's order 
This uses the 4 tables: Orders, user, OrderItem, and Product. This ran and displayed customer names, order ID's, product names, quantities, and the prices. This helped with the database connecting customer information with order information

### Query 3 - Calculate order Totals
This calculates the total cost of the products in each order. SUM() is a SQL function that helps add product costs together based on their quantities and prices.
We used GROUP BY to calculate the total for each order separately. 

This is important as it LexiSearch needs to calculate how much the customer will spend when purchasing products.

### Query 4 - Search product by name
This searches for specific product using its name. In our example, we searched for Nike Hoodie. 

This shows a basic product search, which is one of the main features we want in LexiSearch.

### Query 5 - Search for products using Keywords
This searches for products associated with a particular keyword. So we connected Product, ProductKeyword, and Keyword tables. 

For our example, we searched for keyword casual. This query returned: Nike Hoodie, Adidas T-Shirt, and Levi's Jeans.

This is designed to help customers find products through different search options. 

## 5. Testing 
After we created the database and SQL queries, we used DB browser on SQLite to check that everything worked.

We tested by

- Opening database structure tab to check our tables

- Using Browse Data to check the sample records stored in our tables

- Running SQL queries in the Execute SQL tab

- Checking whether the queries returned the information we wanted

- Check if it had any errors

## 6. How will this database work with LexiSearch?
Our database will be used to support different features of the website the more we continue on developing. It's responsible for storing this information while the UI is what the customers interact with and the Processing section will handle the logic between them. We will connect it to the website as we continue developing on it. 

## 7. Challenges 
One challenge we faced was figuring out how to organize and add database tables, and connect them. It was new to us as we had to think about which information belonged in each table and how the different tables would communicate with each other.

When we started adding fields, we had to figure out what different settings meant, such as Primary Key(PK), AI (Auto Increment), U (Unique) and NN (Not Null). It was confusing knowing each options we needed as one can affect the other. 

Another challenge was figuring out how to connect our tables using foreign keys. We needed to understand which IDs belong in each table and how those IDs would connect information together. 

SQL JOIN statements had to be learned when retrieving information from multiple tables instead of just one. We made sure we were connecting the correct fields so our queries would return the information we wanted.

## 8. How we Overcome These Challenges
We went through settings, made adjustments when needed, and tested our tables and SQL queries using DB Browser. Being able to view the database structure and see the query helped us to see how everything worked more clearly. 

## 8. What we Learned
We learned how relational databases work and why it is important to organize information into separate tables. 

We also learned how primary keys and foreign keys connect different tables together

SQL queries helped us see how to retrieve information from multiple tables instead of only searching through one table. 


