create proc p_AddAccount @ClientId INT, @AccountTypeId INT AS
insert into Accounts (ClientId, AccountTypeId) 
values (@ClientId, @AccountTypeId)
/*proceure execution*/

p_AddAccount 2,2

select * from Accounts
/*Deposit procedure*/
create proc p_Deposit @AccountId INT, @Amount decimal(15,2) AS
update Accounts
set Balance += @Amount
WHERE Id = @AccountId

p_Deposit 2,200.40

select * from Accounts
sp_helptext p_Deposit 
/*withdraw Procedure*/
create Proc p_withdraw @AccountId INT, @Amount decimal(15,2) AS
begin
Declare @oldbalance decimal(15,2)
select  @oldbalance =Balance from Accounts  where Id = @AccountId
if(@oldbalance-@Amount>=0)
begin
update Accounts
set Balance -= @Amount
		where Id = @AccountId
		end
        else
	    begin
		raiserror ('Insufficient funds', 10, 1)
		end
end

p_withdraw 4,360
select * from Accounts

