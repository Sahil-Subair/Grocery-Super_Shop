-- =========================================================
-- GROCERY-SUPER_SHOP PROJECT: D5 SQL IMPLEMENTATION SCRIPT
-- =========================================================

USE master;
GO

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'GroceryMarketplaceDB')
BEGIN
    ALTER DATABASE GroceryMarketplaceDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE GroceryMarketplaceDB;
END
GO

CREATE DATABASE GroceryMarketplaceDB;
GO
USE GroceryMarketplaceDB;
GO

-- =========================================================
-- 1. TABLE CREATION (DDL) - Respecting 3NF & Roles
-- =========================================================

-- Users Table (Supports Super Admin, Admin/Shop Owner, and Customer roles)
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    UserRole VARCHAR(20) CHECK (UserRole IN ('SuperAdmin', 'Admin', 'Customer')) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- Shops Table (Managed by Admins/Shop Owners)
CREATE TABLE Shops (
    ShopID INT IDENTITY(1,1) PRIMARY KEY,
    ShopName VARCHAR(100) NOT NULL,
    OwnerID INT FOREIGN KEY REFERENCES Users(UserID) ON DELETE CASCADE,
    Location VARCHAR(255) NOT NULL,
    IsActive BIT DEFAULT 1
);

-- Categories Table
CREATE TABLE Categories (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ShopID INT FOREIGN KEY REFERENCES Shops(ShopID) ON DELETE CASCADE,
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID),
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT NOT NULL,
    Unit VARCHAR(20) NOT NULL -- e.g., kg, pcs, liters
);

-- Offers Table
CREATE TABLE Offers (
    OfferID INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID) ON DELETE CASCADE,
    DiscountPercentage DECIMAL(5,2) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL
);

-- Carts Table
CREATE TABLE Carts (
    CartID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Users(UserID) ON DELETE CASCADE,
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- CartItems Table (Junction between Cart and Product)
CREATE TABLE CartItems (
    CartItemID INT IDENTITY(1,1) PRIMARY KEY,
    CartID INT FOREIGN KEY REFERENCES Carts(CartID) ON DELETE CASCADE,
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Users(UserID),
    TotalAmount DECIMAL(10,2) NOT NULL,
    OrderStatus VARCHAR(30) DEFAULT 'Pending', -- Pending, Processing, Delivered, Cancelled
    OrderDate DATETIME DEFAULT GETDATE()
);

-- OrderItems Table (Junction between Order and Product)
CREATE TABLE OrderItems (
    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT FOREIGN KEY REFERENCES Orders(OrderID) ON DELETE CASCADE,
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL
);

-- Reviews Table
CREATE TABLE Reviews (
    ReviewID INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID) ON DELETE CASCADE,
    CustomerID INT FOREIGN KEY REFERENCES Users(UserID),
    Rating INT CHECK (Rating BETWEEN 1 AND 5) NOT NULL,
    Comment TEXT,
    ReviewDate DATETIME DEFAULT GETDATE()
);
GO

-- =========================================================
-- 2. SEED DATA (DML)
-- =========================================================

-- Seed Users
INSERT INTO Users (FullName, Email, PasswordHash, UserRole) VALUES
('System SuperAdmin', 'superadmin@grocery.com', 'hashed_pass_1', 'SuperAdmin'),
('Alice Vendor', 'alice@freshmarket.com', 'hashed_pass_2', 'Admin'),
('Bob Customer', 'bob@gmail.com', 'hashed_pass_3', 'Customer'),
('Charlie Customer', 'charlie@gmail.com', 'hashed_pass_4', 'Customer');

-- Seed Shops
INSERT INTO Shops (ShopName, OwnerID, Location) VALUES
('Fresh Mart SuperShop', 2, 'Downtown Sector 4');

-- Seed Categories
INSERT INTO Categories (CategoryName) VALUES
('Fruits & Vegetables'),
('Dairy & Eggs'),
('Bakery & Snacks');

-- Seed Products
INSERT INTO Products (ShopID, CategoryID, ProductName, Price, StockQuantity, Unit) VALUES
(1, 1, 'Organic Bananas', 1.20, 150, 'kg'),
(1, 1, 'Fresh Red Apples', 3.50, 80, 'kg'),
(1, 2, 'Whole Milk (1L)', 1.50, 200, 'liters'),
(1, 2, 'Farm Eggs (Dozen)', 2.80, 100, 'packs'),
(1, 3, 'Whole Wheat Bread', 2.20, 50, 'pcs');

-- Seed Offers
INSERT INTO Offers (ProductID, DiscountPercentage, StartDate, EndDate) VALUES
(1, 10.00, '2026-08-01', '2026-08-31');

-- Seed Carts & CartItems
INSERT INTO Carts (CustomerID) VALUES (3);
INSERT INTO CartItems (CartID, ProductID, Quantity) VALUES (1, 2, 2);

-- Seed Orders & OrderItems
INSERT INTO Orders (CustomerID, TotalAmount, OrderStatus) VALUES
(3, 7.50, 'Delivered'),
(4, 3.00, 'Processing');

INSERT INTO OrderItems (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 2, 2, 3.50), -- 2 Apples
(1, 3, 1, 1.50), -- 1 Milk
(2, 3, 2, 1.50); -- 2 Milk

-- Seed Reviews
INSERT INTO Reviews (ProductID, CustomerID, Rating, Comment) VALUES
(2, 3, 5, 'Very fresh and sweet apples!');
GO

-- =========================================================
-- 3. TWELVE BUSINESS LOGIC QUERIES
-- =========================================================

-- 1. Retrieve all active shops and their owners
SELECT s.ShopID, s.ShopName, s.Location, u.FullName AS OwnerName 
FROM Shops s
JOIN Users u ON s.OwnerID = u.UserID
WHERE s.IsActive = 1;

-- 2. List all products available under a specific category (e.g., CategoryID = 1)
SELECT p.ProductID, p.ProductName, p.Price, p.StockQuantity, p.Unit, sh.ShopName
FROM Products p
JOIN Shops sh ON p.ShopID = sh.ShopID
WHERE p.CategoryID = 1;

-- 3. Search for products containing a keyword (e.g., 'Apple')
SELECT p.ProductName, p.Price, p.StockQuantity, c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE p.ProductName LIKE '%Apple%';

-- 4. View active special offers and discounted products
SELECT p.ProductName, p.Price AS OriginalPrice, o.DiscountPercentage, 
       (p.Price - (p.Price * o.DiscountPercentage / 100)) AS DiscountedPrice,
       o.StartDate, o.EndDate
FROM Offers o
JOIN Products p ON o.ProductID = p.ProductID
WHERE GETDATE() BETWEEN o.StartDate AND o.EndDate;

-- 5. View contents of a customer's shopping cart (e.g., CustomerID = 3)
SELECT ci.CartItemID, p.ProductName, ci.Quantity, p.Price, (ci.Quantity * p.Price) AS Subtotal
FROM Carts c
JOIN CartItems ci ON c.CartID = ci.CartID
JOIN Products p ON ci.ProductID = p.ProductID
WHERE c.CustomerID = 3;

-- 6. Calculate total cost of items in a specific customer's cart
SELECT SUM(ci.Quantity * p.Price) AS TotalCartValue
FROM Carts c
JOIN CartItems ci ON c.CartID = ci.CartID
JOIN Products p ON ci.ProductID = p.ProductID
WHERE c.CustomerID = 3;

-- 7. View full order history for a customer (e.g., CustomerID = 3)
SELECT o.OrderID, o.OrderDate, o.OrderStatus, o.TotalAmount
FROM Orders o
WHERE o.CustomerID = 3
ORDER BY o.OrderDate DESC;

-- 8. View detailed items for a specific order (e.g., OrderID = 1)
SELECT oi.OrderItemID, p.ProductName, oi.Quantity, oi.UnitPrice, (oi.Quantity * oi.UnitPrice) AS LineTotal
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID
WHERE oi.OrderID = 1;

-- 9. Track order status updates by SuperAdmin/Admin
SELECT OrderID, CustomerID, OrderStatus, OrderDate
FROM Orders
WHERE OrderStatus IN ('Pending', 'Processing');

-- 10. Check low-stock inventory alerts for shop owners (Stock < 60)
SELECT p.ProductID, p.ProductName, p.StockQuantity, sh.ShopName
FROM Products p
JOIN Shops sh ON p.ShopID = sh.ShopID
WHERE p.StockQuantity < 60;

-- 11. Calculate total revenue generated by each shop
SELECT sh.ShopID, sh.ShopName, SUM(oi.Quantity * oi.UnitPrice) AS TotalRevenue
FROM Shops sh
JOIN Products p ON sh.ShopID = p.ShopID
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY sh.ShopID, sh.ShopName;

-- 12. View product reviews and average rating for a product (e.g., ProductID = 2)
SELECT p.ProductName, AVG(CAST(r.Rating AS FLOAT)) AS AverageRating, COUNT(r.ReviewID) AS TotalReviews
FROM Products p
LEFT JOIN Reviews r ON p.ProductID = r.ProductID
WHERE p.ProductID = 2
GROUP BY p.ProductName;