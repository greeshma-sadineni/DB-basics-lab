create function f_CalculateTotalBalance(@ClientID int)
returns decimal(15,2)
as
begin
declare @result as decimal(15,2)=(select sum(Balance) 
from Accounts 
Where ClientId=@ClientID)
return @result;
End

 select dbo.f_CalculateTotalBalance(4) as Balance
