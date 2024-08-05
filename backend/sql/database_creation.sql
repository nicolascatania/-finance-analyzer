USE finance_analyzer;

-- Create the main users table
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    UserName VARCHAR(255) NOT NULL,
    UserEmail VARCHAR(255) NOT NULL CHECK (UserEmail LIKE '%@%.%'),
    UserPassword CHAR(15) NOT NULL
);

-- Create the Categories table
CREATE TABLE Categories (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    CategoryName VARCHAR(50) NOT NULL,
    CategoryDescription VARCHAR(255) NOT NULL,
    UserID INT NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create the Purchases table
CREATE TABLE Purchases (
    PurchaseID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    PurchaseDate DATE NOT NULL,
    PurchaseDescription VARCHAR(255) NOT NULL,
    PurchaseTotalPrice FLOAT NOT NULL,
    UserID INT NOT NULL,
    CategoryID INT NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Create the Payments table
CREATE TABLE Payments (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    PaymentCuoteNumber TINYINT NOT NULL,
    PaymentDate DATE,
    UserID INT NOT NULL,
    PurchaseID INT NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (PurchaseID) REFERENCES Purchases(PurchaseID)
);
