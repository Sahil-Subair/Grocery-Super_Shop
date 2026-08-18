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

1. The system shall allow the Super Admin to approve or reject new grocery shop registrations.
2. The system shall allow the Super Admin to suspend or delete shop owners.
3. The system shall allow the Super Admin to view, search, and filter all Admins and Customers.
4. The system shall display platform-wide sales, revenue, orders, and commission information.
5. The system shall allow the Super Admin to view shops with ratings below the selected threshold.
6. The system shall allow the Super Admin to add, edit, and delete product categories.
7. The system shall allow the Super Admin to remove inappropriate or fake customer reviews.

### 1.2 Admin

1. The system shall allow an Admin to manage their approved grocery shop profile.
2. The system shall allow an Admin to add, view, update, and delete their own products.
3. The system shall allow an Admin to manage product stock and minimum stock levels.
4. The system shall display low-stock alerts when a product's stock falls below its minimum level.
5. The system shall allow an Admin to view their sales and earnings.
6. The system shall allow an Admin to create discount offers with start and end dates.
7. The system shall allow an Admin to view ratings and reviews for their products.
8. The system shall allow an Admin to update their own profile and password.
9. The system shall prevent an Admin from accessing another shop owner's products, orders, or earnings.

### 1.3 Customer

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

### 2 User Stories

### 2.1 Super Admin

**1. Approve or Reject Shop Owners**  
As a Super Admin, I can approve or reject new shop registrations so that only trusted grocery shops can join the platform.  
The Super Admin can see pending shop registrations and choose Approve or Reject. The shop status is then updated in the database.

**2. Manage Shop Owners**  
As a Super Admin, I can suspend or delete shop owners so that I can keep the platform safe and reliable.  
The Super Admin selects a shop owner and confirms the action. The account status is updated accordingly.

**3. View Users**  
As a Super Admin, I can view and search users so that I can keep track of the Admins and Customers using the system.  
Users are shown in a list with search and filter options.

**4. View Platform Sales**  
As a Super Admin, I can view total sales and commission so that I can understand how the marketplace is performing.  
The system calculates the total orders, sales, and commission from completed orders.

**5. Check Low-Rated Shops**  
As a Super Admin, I can see low-rated shops so that I can identify shops that may need attention.  
The system calculates the average ratings and displays shops below the selected rating.

**6. Manage Categories**  
As a Super Admin, I can add, edit, and delete product categories so that grocery products can be organized properly.  
The category information is checked and then saved in the database.

**7. Manage Reviews**  
As a Super Admin, I can remove inappropriate reviews so that customers can have a better experience on the platform.  
The Super Admin selects a review and confirms its removal.


### 2.2 Admin

**1. Manage Shop Profile**  
As an Admin, I can update my approved shop profile so that customers can see accurate information about my shop.  
I can update details such as shop name, category, address, and contact information.


**2. Manage Products**  
As an Admin, I can add, update, and delete my products so that customers can see what my shop has available.  
Product details such as name, price, stock, and description are saved in the database.

**3. Manage Stock**  
As an Admin, I can check my product stock so that I know when products are running low.  
The system shows the current stock and gives a low-stock alert when it goes below the minimum level.

**4. View Sales and Earnings**  
As an Admin, I can view my shop's sales and earnings so that I can understand how my shop is performing.  
The system shows sales information only for my own shop.

**5. Create Discounts**  
As an Admin, I can create discount offers so that I can attract more customers.  
I can enter the discount percentage and start and end dates, which are checked before being saved.

**6. View Reviews**  
As an Admin, I can view reviews for my products so that I can understand what customers think about them.  
Reviews are displayed for my products, but I cannot delete customer reviews.

**7. Update Profile and Password**  
As an Admin, I can update my profile and password so that my account information stays correct and secure.  
The system checks the information before saving the changes.


### 2.3 Customer

**1. Sign Up and Sign In**  
As a Customer, I can create an account and sign in so that I can use the grocery marketplace.  
The system checks the required information before creating the account.

**2. Browse Products**  
As a Customer, I can browse products from different shops so that I can find the groceries I need.  
Products are shown with information such as name, price, shop, and availability.

**3. Search Products**  
As a Customer, I can search for products by name or keyword so that I can find items more quickly.  
The system shows products that match my search.

**4. Filter Products**  
As a Customer, I can filter products by price, category, and availability so that I can find suitable products more easily.  
The selected filters are applied to the product list.

**5. View Product Details and Reviews**  
As a Customer, I can view product details and reviews so that I can decide whether I want to buy a product.  
The system shows the product information, rating, and customer reviews.

**6. Manage Cart**  
As a Customer, I can add, update, or remove products from my cart so that I can prepare my order before checkout.  
The cart shows the selected products, quantities, prices, and total amount.

**7. Checkout and Payment**  
As a Customer, I can checkout and select a payment method so that I can complete my purchase.  
After checkout, the order is saved, the order items are recorded, and the product stock is reduced.

**8. Order History and Invoice**  
As a Customer, I can view my previous orders and invoices so that I can keep track of my purchases.  
The system only shows orders belonging to my account.

**9. Give Rating and Review**  
As a Customer, I can give a rating and write a review so that I can share my experience with other customers.  
The rating must be between 1 and 5 before the review is saved.

**10. View Discounts**  
As a Customer, I can view available discounts so that I can find products at lower prices.  
The system shows offers that are currently active.

**11. Update Profile and Password**  
As a Customer, I can update my profile and password so that my account information stays accurate and secure.  
The system checks the changes before saving them.

## D3. UI Navigation Diagram 
<img width="673" height="812" alt="UI_Navigation_Diagram png" src="https://github.com/user-attachments/assets/2c84ef33-386c-49fc-ba6f-a786dcb14808" />

## D4. SQL Schema Diagram
<img width="1100" height="1060" alt="Grocery Marketplace Management System" src="https://github.com/user-attachments/assets/83acdd05-b164-4d91-a731-924b219ee706" />
