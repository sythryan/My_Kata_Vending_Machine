with Ada.Text_IO;
with Vending_Machine_Test_Procedures; use Vending_Machine_Test_Procedures;
-- Author : Syth Ryan
--------------------------------------------------------------------------------
procedure Vending_Machine_Test is

begin
   -- Accept Coin
   passAPennyToAcceptCoinShouldReturnFalse;
   passANickelToAcceptCoinShouldReturnTrue;

   -- Select Product
   passOneDollarAndColaToSelectProductShouldReturnTrue;
   passFiveCentsAndColaToSelectProductShouldReturnFalse;
   passFiftyCentsAndChipsToSelectProductShouldReturnTrue;
end Vending_Machine_Test;
