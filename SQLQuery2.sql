USE [LogiMoveDB]
GO

CREATE TABLE Drivers (
DriverID INT PRIMARY KEY,
Nome VARCHAR(100),
CNH VARCHAR(20),
Endere�o VARCHAR(200),
Contato VARCHAR(50)
);
CREATE TABLE Clients (
ClientID INT PRIMARY KEY,
Nome VARCHAR(100),
Empresa VARCHAR(100),
Endere�o VARCHAR(200),
Contato VARCHAR(50)
);
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
ClientID INT,
DriverID INT,
DetalhesPedido TEXT,
DataEntrega DATE,
Status VARCHAR(50),
FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);

INSERT INTO Drivers (DriverID, Nome, CNH, Endere�o, Contato)
VALUES (1, 'Carlos Eduardo', '1234567890', 'Rua A, 123', '555-1234');

INSERT INTO Clients (ClientID, Nome, Empresa, Endere�o, Contato)
VALUES (1, 'Maria J�lia', 'Empresa ABC', 'Rua das Margaridas, 777', '555-7890');

INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status)
VALUES (1, 1, 1, 'Entrega de 50 caixas', '2024-06-24', 'Pendente');

SELECT * FROM Drivers;
SELECT * FROM Clients;
SELECT * FROM Orders WHERE Status = 'Pendente';

-- Atualizar 
UPDATE Orders
SET Status = 'Entregue'
WHERE OrderID = 1;

SELECT * FROM Orders;

--Deletar 
DELETE FROM Orders
WHERE OrderID = 1;

SELECT * FROM Orders