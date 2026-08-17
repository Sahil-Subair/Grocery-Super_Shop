# Grocery-Super_Shop
> A platform that connects customers with grocery shops, allowing customers to browse, purchase, and review grocery products online.

**Course:** CSC 2210 — Object Oriented Programming 2  
**Semester:** Summer 2025–2026  
**Section:** AA   
**Supervised by:** Dr. Md. Iftekharul Mobin

## Team Members

| Name | ID |
|------|----|
| Sahil Subair | 25-62082-2 | 
| Nafim Islam Nabid | 24-58032-2 | 


## 1. Case Study
Grocery shopping can sometimes be inconvenient for customers because they may need to visit different shops to find the products they need. Small grocery shop owners also face difficulties in reaching more customers, keeping track of their products and stock, and managing their sales manually. Our Grocery Marketplace is designed to solve these problems by providing a single platform where customers can find grocery products from different shops and place their orders conveniently.

The system will have three main types of users: Super Admin, Admin, and Customer. The Super Admin is the owner of the marketplace and manages the overall platform. They can approve or reject new shop owners, suspend shop owners when necessary, manage product categories, monitor platform sales and commission, and moderate customer reviews. The Admin represents a grocery shop owner. Each Admin can manage only their own shop, including adding, updating, and deleting products, managing stock, creating discount offers, viewing sales, and checking customer reviews. The Customer is the person who purchases groceries through the platform. Customers can create an account, browse products from different shops, search and filter products, add items to their cart, place orders, receive an invoice, and provide ratings and reviews.

The main entities in the system are Users, Shops, Products, Cart, Orders, OrderItems, Reviews, and Offers. Users will contain information such as name, email, password, phone number, address, user type, and account status. A Shop will contain details such as shop name, category, address, and owner. Each shop can have multiple products, while each product will contain information such as its name, price, stock quantity, minimum stock level, description, and image. Customers can add products to their cart and place orders. Since an order can contain multiple products, the OrderItems entity will store the individual products, quantities, unit prices, and subtotals for each order. Customers can also give ratings and written reviews for products, while shop owners can create discount offers with specific start and end dates.

The money flow starts when a customer purchases products through the marketplace. The customer pays for the order, the shop owner earns money from the sale, and the platform receives a commission from the transaction. The Super Admin can monitor the total orders, revenue, and commission earned by the platform. Overall, the Grocery Marketplace will provide customers with a convenient way to purchase groceries while helping grocery shop owners manage their products, stock, orders, sales, and earnings in one organized system.

## 2. Functional Requirements

### 2.1 Super Admin

1. The system shall allow the Super Admin to approve or reject new grocery shop registrations.
2. The system shall allow the Super Admin to suspend or delete shop owners.
3. The system shall allow the Super Admin to view, search, and filter all Admins and Customers.
4. The system shall display platform-wide sales, revenue, orders, and commission information.
5. The system shall allow the Super Admin to view shops with ratings below the selected threshold.
6. The system shall allow the Super Admin to add, edit, and delete product categories.
7. The system shall allow the Super Admin to remove inappropriate or fake customer reviews.

### 2.2 Admin

1. The system shall allow an Admin to register and manage their grocery shop profile.
2. The system shall allow an Admin to add, view, update, and delete their own products.
3. The system shall allow an Admin to manage product stock and minimum stock levels.
4. The system shall display low-stock alerts when a product's stock falls below its minimum level.
5. The system shall allow an Admin to view their sales and earnings.
6. The system shall allow an Admin to create discount offers with start and end dates.
7. The system shall allow an Admin to view ratings and reviews for their products.
8. The system shall allow an Admin to update their own profile and password.
9. The system shall prevent an Admin from accessing another shop owner's products, orders, or earnings.

### 2.3 Customer

1. The system shall allow Customers to create an account and sign in.
2. The system shall allow Customers to browse products from all available shops.
3. The system shall allow Customers to search products by name or keyword.
4. The system shall allow Customers to filter products using options such as price, category, location, and availability.
5. The system shall allow Customers to view product details and reviews.
6. The system shall allow Customers to add products to their cart.
7. The system shall allow Customers to update quantities and remove products from their cart.
8. The system shall allow Customers to checkout and generate a bill/invoice.
9. The system shall allow Customers to view their order history and printable invoices.
10. The system shall allow Customers to give a rating from 1–5 and write a review.
11. The system shall allow Customers to view available discounts and special offers.
12. The system shall allow Customers to update their own profile and password.
