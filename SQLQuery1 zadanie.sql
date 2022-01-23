SELECT Number AS [Numer faktury], FirstName AS Imiê, LastName AS Nazwisko
FROM Invoices inv
INNER JOIN Clients c ON c.Id = inv.ClientNumber

SELECT InvoiceId AS [Nr faktury], ProductName AS Nazwa, Price AS Cena
FROM InvoicePositions ivp
INNER JOIN Products p ON p.Id = ivp.ProductId
INNER JOIN Invoices inv ON inv.Id = ivp.InvoiceId

SELECT InvoiceId AS [Nr faktury], SUM(Quantity) AS [Suma produktów]
FROM InvoicePositions ivp 
INNER JOIN Products p ON p.Id = ivp.ProductId
GROUP BY InvoiceId

SELECT InvoiceId AS [Nr faktury], SUM(Price*Quantity) AS [Cena ca³kowita]
FROM InvoicePositions ivp 
INNER JOIN Products p ON p.Id = ivp.ProductId
GROUP BY InvoiceId