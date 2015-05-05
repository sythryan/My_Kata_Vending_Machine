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
   passTenCentsAndChipsToSelectProductShouldReturnFalse;
   passOneDollarAndCandyToSelectProductShouldReturnTrue;
   passTwentyFiveCentsAndCandyToSelectProductShouldReturnFalse;

   -- Make Change
   passTwoDollarsAndOneDollarCostToMakeChangeShouldReturn100;

   -- Return Coins
   passOneDollarAndZeroCostToReturnCoinsShouldReturn4Quarters;
   passOneDollarAndSixtyCostToReturnCoinsShouldReturn1Quarter1Dime1Nickel;

   -- Sold Out
   passCandyToSoldOutShouldReturnFalse;

   -- Exact Change Only
   callingExactChangeOnlyShouldReturnFalse;
end Vending_Machine_Test;
