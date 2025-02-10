USE coffee;

ALTER TABLE Dim_product
ADD CONSTRAINT FK_Dim_product_CoffeeType FOREIGN KEY ([Coffee Type]) 
REFERENCES Dim_coffeetype([Coffee Type]);

ALTER TABLE Dim_country
ADD CONSTRAINT FK_Dim_country_City FOREIGN KEY ([City]) 
REFERENCES Dim_city([City]);

ALTER TABLE Dim_customer
ADD CONSTRAINT FK_Dim_customer_Country FOREIGN KEY ([Country]) 
REFERENCES Dim_country([Country]);

ALTER TABLE Fact
ADD CONSTRAINT FK_Fact_ProductID FOREIGN KEY ([Product ID]) 
REFERENCES Dim_product([Product ID]);

ALTER TABLE Fact
ADD CONSTRAINT FK_Fact_CustomerID FOREIGN KEY ([Customer ID]) 
REFERENCES Dim_customer([Customer ID]);

ALTER TABLE Fact
ADD CONSTRAINT FK_Fact_OrderDate FOREIGN KEY ([Order Date]) 
REFERENCES Dim_time([Order Date]);