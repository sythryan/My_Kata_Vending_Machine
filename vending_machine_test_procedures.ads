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

end Vending_Machine_Test_Procedures;
