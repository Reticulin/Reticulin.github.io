CREATE TABLE Dealership (
	id INTEGER PRIMARY KEY,
	Customer_id INTEGER,
	make TEXT,
	model TEXT,
	date_purchased DATETIME
);

CREATE TABLE Customers (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name Text,
	make TEXT,
	model TEXT,
	date_purchased DATETIME	
);

INSERT INTO Dealership (make, model, date_purchased) 
VALUES ('Ford', 'Mustang', '2014-01-24'), 
('Chevrolet', 'Camaro', '2014-02-14'),
('Porsche', 'Carrera', '2014-03-22'),
('Tesla', 'Model S', '2014-04-08'),
('Hyundai', 'Genesis Coupe', '2014-05-05'),
('Toyota', 'Supra', '2014-06-07'),
('Acura', 'NSX', '2014-06-07'),
('BMW', 'M3', '2014-07-10'),
('Lotus', 'Elise', '2014-08-02'),
('Subaru', 'BRX', '2014-09-15');
