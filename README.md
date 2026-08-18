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
2. The system shall allow the Super Admin to view, search, and filter all Admins.
3. The system shall display platform-wide sales, revenue, orders, and commission information.
4. The system shall allow the Super Admin to add, edit, and delete product categories.
5. The system shall allow the Super Admins to Delete or reply to Reviews.

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

### LOGIN
<img width="762" height="442" alt="01-login" src="https://github.com/user-attachments/assets/948b1d48-d8dd-48bb-a71c-f6b40a1a9539" />

### SIGN UP
<img width="762" height="583" alt="02-signup" src="https://github.com/user-attachments/assets/f9c93db9-1ea8-4ba1-94a2-a7d17e1a1466" />

### Super Admin - SHOP OWNERS
<img width="762" height="442" alt="03-superadmin-manage-shop-owners" src="https://github.com/user-attachments/assets/2fa30ca6-f59a-4f37-afe3-cc1544e652a1" />

### Super Admin - Sales Report
<img width="762" height="472" alt="04-superadmin-sales-report" src="https://github.com/user-attachments/assets/48d8b5c1-9fa3-4c49-b528-4220c4366e47" />

### Super Admin - Manage Categories
<img width="762" height="472" alt="05-superadmin-manage-categories" src="https://github.com/user-attachments/assets/9fa0a683-9e39-45b2-a3b4-250c7ed802db" />

### Super Admin - Manage Reviews
<img width="762" height="472" alt="06-superadmin-manage-reviews" src="https://github.com/user-attachments/assets/f3e20bb3-5e61-4028-b08f-fcbd5b15ef67" />

### Admin - Products Management
<img width="762" height="472" alt="07-admin-products-management" src="https://github.com/user-attachments/assets/f0e8fd96-f456-4ed7-b548-9522cf52abc4" />

### Admin - Inventory
<img width="762" height="472" alt="08-admin-inventory" src="https://github.com/user-attachments/assets/23c9ff63-5c99-4c04-a492-596f6c917560" />

### Admin - Sales & Earnings
<img width="762" height="472" alt="09-admin-sales-earnings" src="https://github.com/user-attachments/assets/85c3b7e8-d45e-499f-a2c8-7b001e0e7342" />

### Admin - Offers
<img width="762" height="472" alt="10-admin-offers" src="https://github.com/user-attachments/assets/3ccbd555-7c44-4df8-81ac-2a9b232942d9" />

### Customer - Browse Products
<img width="762" height="472" alt="11-customer-browse" src="https://github.com/user-attachments/assets/67fb2b94-1bb3-4c3b-9570-e8f7f6d56d30" />

### Customer - Product Details
<img width="762" height="472" alt="12-customer-product-details" src="https://github.com/user-attachments/assets/66979029-62d1-4c77-b673-61b41442f685" />

### Customer - Cart
<img width="762" height="472" alt="13-customer-cart" src="https://github.com/user-attachments/assets/bfbe544f-cf6c-4903-953e-de630f803430" />

### Customer - Checkout
<img width="886" height="472" alt="14-customer-checkout" src="https://github.com/user-attachments/assets/a07a33a1-c8f1-4bcb-961d-c8512c641ab2" />

### Customer - Order History
<img width="762" height="472" alt="15-customer-order-history" src="https://github.com/user-attachments/assets/882bb2c9-d0a1-4e4d-97ae-7cf2a1d82d66" />
