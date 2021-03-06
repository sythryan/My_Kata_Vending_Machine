-- Author: Syth Ryan

package Vending_Machine_Test_Procedures is

   -- Print out a message whether the test passed

   -- Accept_Coin
   procedure passAPennyToAcceptCoinShouldReturnFalse;
   procedure passANickelToAcceptCoinShouldReturnTrue;

   -- Select Product
   procedure passOneDollarAndColaToSelectProductShouldReturnTrue;
   procedure passFiveCentsAndColaToSelectProductShouldReturnFalse;

   procedure passFiftyCentsAndChipsToSelectProductShouldReturnTrue;
   procedure passTenCentsAndChipsToSelectProductShouldReturnFalse;

   procedure passOneDollarAndCandyToSelectProductShouldReturnTrue;
   procedure passTwentyFiveCentsAndCandyToSelectProductShouldReturnFalse;

   -- Make Change
   procedure passTwoDollarsAndOneDollarCostToMakeChangeShouldReturn100;

   -- Return Coins
   procedure passOneDollarAndZeroCostToReturnCoinsShouldReturn4Quarters;
   procedure passOneDollarAndSixtyCostToReturnCoinsShouldReturn1Quarter1Dime1Nickel;

   -- Sold Out
   procedure passCandyToSoldOutShouldReturnFalse;

   -- Exact Change Only
   procedure callingExactChangeOnlyShouldReturnFalse;

end Vending_Machine_Test_Procedures;
