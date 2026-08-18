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


## D1. Case Study
Grocery shopping can sometimes be inconvenient for customers because they may need to visit different shops to find the products they need. Small grocery shop owners also face difficulties in reaching more customers, keeping track of their products and stock, and managing their sales manually. Our Grocery Marketplace is designed to solve these problems by providing a single platform where customers can find grocery products from different shops and place their orders conveniently.

The system will have three main types of users: Super Admin, Admin, and Customer. The Super Admin is the owner of the marketplace and manages the overall platform. They can approve or reject new shop owners, suspend shop owners when necessary, manage product categories, monitor platform sales and commission, and moderate customer reviews. The Admin represents a grocery shop owner. Each Admin can manage only their own shop, including adding, updating, and deleting products, managing stock, creating discount offers, viewing sales, and checking customer reviews. The Customer is the person who purchases groceries through the platform. Customers can create an account, browse products from different shops, search and filter products, add items to their cart, place orders, receive an invoice, and provide ratings and reviews.

The main entities in the system are Users, Shops, Products, Cart, Orders, OrderItems, Reviews, and Offers. Users will contain information such as name, email, password, phone number, address, user type, and account status. A Shop will contain details such as shop name, category, address, and owner. Each shop can have multiple products, while each product will contain information such as its name, price, stock quantity, minimum stock level, description, and image. Customers can add products to their cart and place orders. Since an order can contain multiple products, the OrderItems entity will store the individual products, quantities, unit prices, and subtotals for each order. Customers can also give ratings and written reviews for products, while shop owners can create discount offers with specific start and end dates.

The money flow starts when a customer purchases products through the marketplace. The customer pays for the order, the shop owner earns money from the sale, and the platform receives a commission from the transaction. The Super Admin can monitor the total orders, revenue, and commission earned by the platform. Overall, the Grocery Marketplace will provide customers with a convenient way to purchase groceries while helping grocery shop owners manage their products, stock, orders, sales, and earnings in one organized system.

## D2. Functional Requirements

### 1.1 Super Admin

1. The system shall allow the Super Admin to suspend or delete shop owners.
2. The system shall allow the Super Admin to view, search, and filter all Admins and Customers.
3. The system shall display platform-wide sales, revenue, orders, and commission information.
4. The system shall allow the Super Admin to add, edit, and delete product categories.

### 1.2 Admin

1. The system shall allow an Admin to manage their approved grocery shop profile.
2. The system shall allow an Admin to add, view, update, and delete their own products.
3. The system shall allow an Admin to manage product stock and minimum stock levels.
4. The system shall allow an Admin to view their sales and earnings.
5. The system shall allow an Admin to create discount offers with start and end dates.

### 1.3 Customer

1. The system shall allow Customers to create an account and sign in.
2. The system shall allow Customers to browse products from all available shops.
3. The system shall allow Customers to search products by name or keyword.
4. The system shall allow Customers to view product details and reviews.
5. The system shall allow Customers to add products to their cart.
6. The system shall allow Customers to update quantities and remove products from their cart.
7. The system shall allow Customers to checkout and generate a bill/invoice.
8. The system shall allow Customers to view their order history and printable invoices.

### 2 User Stories

### 2.1 Super Admin

**1. Manage Shop Owners**  
As a Super Admin, I want to manage shop owners via the Manage Shop Owners module.

**2. View Platform Sales**  
As a Super Admin, I want to view platform sales and commissions via the Platform Sales & Commission section.

**3. Manage Categories**  
As a Super Admin, I want to manage product categories via the Manage Categories section.

**4. Manage Reviews**  
As a Super Admin, I want to moderate and manage customer reviews via the Manage Reviews section.


### 2.2 Admin

**1. Manage Products**  
As a Shop Admin, I want to manage products through Product Management.

**2. Manage Stock**  
As a Shop Admin, I want to track and update levels via Inventory / Stock.

**3. View Sales and Earnings**  
As a Shop Admin, I want to monitor earnings and revenues via Sales & Earnings.

**4. Create Discounts**  
As a Shop Admin, I want to set up and manage discounts or promotions via Offers.


### 2.3 Customer

**1. Sign Up and Sign In**  
As a Customer, I can create an account and sign in so that I can use the grocery marketplace.  
The system checks the required information before creating the account.

**2. Browse Products**  
As a Customer, I want to search and filter products via Browse Products.

**3. Product's Details**  
As a Customer, I want to view specific item details and feedback through Product Details & Reviews.

**4. Manage Cart**  
As a Customer, I want to add selected items to my Cart.

**5. Checkout**  
As a Customer, I want to proceed to Checkout / Invoice to complete my purchase.

**6. Order History**  
As a Customer, I want to view my past purchases through Order History.

## D3. UI Navigation Diagram 
<img width="673" height="812" alt="UI_Navigation_Diagram png" src="https://github.com/user-attachments/assets/2c84ef33-386c-49fc-ba6f-a786dcb14808" />

## D4. SQL Schema Diagram
<img width="1100" height="1060" alt="Grocery Marketplace Management System" src="https://github.com/user-attachments/assets/83acdd05-b164-4d91-a731-924b219ee706" />

## D5. SQL Script 
Given in database folder directory.

## D6. UI Mockups / Form Designs 
