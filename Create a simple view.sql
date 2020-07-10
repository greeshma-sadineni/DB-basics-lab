create view v_ClientBalance as
select (FirstName + ' ' + LastName) AS [Name], 
 (AccountTypes.Name) AS [Account Type],Balance
FROM Clients
JOIN Accounts on Clients.Id = Accounts.ClientId
JOIN AccountTypes ON AccountTypes.Id = Accounts.AccountTypeId

select * from v_ClientBalance;