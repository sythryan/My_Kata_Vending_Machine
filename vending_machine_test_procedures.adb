with vending_machine; use vending_machine;
with Ada.Text_IO; use Ada.Text_IO;
-- Author : Syth Ryan
package body Vending_Machine_Test_Procedures is

   procedure passAPennyToAcceptCoinShouldReturnFalse is

   begin
      if not (Accept_Coin(Penny)) then
         Put_Line("+ PASSED: passAPennyToAcceptCoinShouldReturnFalse");
      else
         Put_Line("- FAILD: passAPennyToAcceptCoinShouldReturnFalse");
      end if;
   end passAPennyToAcceptCoinShouldReturnFalse;
   -------------------------------------------------------

   procedure passANickelToAcceptCoinShouldReturnTrue is
   begin
      if (vending_machine.Accept_Coin(vending_machine.Nickel)) then
         Put_Line("+ PASSED: passANickelToAcceptCoinShouldReturnTrue");
      else
         Put_Line("- FAILD: passANickelToAcceptCoinShouldReturnTrue");
      end if;
   end passANickelToAcceptCoinShouldReturnTrue;
   -------------------------------------------------------

   procedure passOneDollarAndColaToSelectProductShouldReturnTrue is
   begin
      if (Select_Product(Product => Cola, Money => 100)) then
         Put_Line("+ PASSED: passOneDollarAndColaToSelectProductShouldReturnTrue");
      else
         Put_Line("- FAILD: passOneDollarAndColaToSelectProductShouldReturnTrue");
      end if;
   end passOneDollarAndColaToSelectProductShouldReturnTrue;
   ------------------------------------------------------

   procedure passFiveCentsAndColaToSelectProductShouldReturnFalse is
   begin
      if not (Select_Product(Product => Cola, Money => 5)) then
         Put_Line("+ PASSED: passFiveCentsAndColaToSelectProductShouldReturnFalse");
      else
         Put_Line("- FAILD: passFiveCentsAndColaToSelectProductShouldReturnFalse");
      end if;
   end passFiveCentsAndColaToSelectProductShouldReturnFalse;
   ------------------------------------------------------

   procedure passFiftyCentsAndChipsToSelectProductShouldReturnTrue is
   begin
      if (Select_Product(Product => Chips, Money => 50)) then
         Put_Line("+ PASSED: passFiftyCentsAndChipsToSelectProductShouldReturnTrue");
      else
         Put_Line("- FAILD: passFiftyCentsAndChipsToSelectProductShouldReturnTrue");
      end if;
   end passFiftyCentsAndChipsToSelectProductShouldReturnTrue;
   ------------------------------------------------------

   procedure passTenCentsAndChipsToSelectProductShouldReturnFalse is
   begin
      if not (Select_Product(Product => Chips, Money => 10)) then
         Put_Line("+ PASSED: passTenCentsAndChipsToSelectProductShouldReturnFalse");
      else
         Put_Line("- FAILD: passTenCentsAndChipsToSelectProductShouldReturnFalse");
      end if;
   end passTenCentsAndChipsToSelectProductShouldReturnFalse;
   ------------------------------------------------------

   procedure passOneDollarAndCandyToSelectProductShouldReturnTrue is
   begin
      if (Select_Product(Product => Chips, Money => 100)) then
         Put_Line("+ PASSED: passOneDollarAndCandyToSelectProductShouldReturnTrue");
      else
         Put_Line("- FAILD: passOneDollarAndCandyToSelectProductShouldReturnTrue");
      end if;
   end passOneDollarAndCandyToSelectProductShouldReturnTrue;
   ------------------------------------------------------

   procedure passTwentyFiveCentsAndCandyToSelectProductShouldReturnFalse is
   begin
      if not (Select_Product(Product => Chips, Money => 25)) then
         Put_Line("+ PASSED: passTwentyFiveCentsAndCandyToSelectProductShouldReturnFalse");
      else
         Put_Line("- FAILD: passTwentyFiveCentsAndCandyToSelectProductShouldReturnFalse");
      end if;
   end passTwentyFiveCentsAndCandyToSelectProductShouldReturnFalse;

   ------------------------------------------------------

   procedure passTwoDollarsAndOneDollarCostShouldReturn100 is
   begin
      if (Make_Change(Money =>200, Cost=>100) = 100) then
         Put_Line("+ PASSED: passTwoDollarsAndOneDollarCostShouldReturn100");
      else
         Put_Line("- FAILD: passTwoDollarsAndOneDollarCostShouldReturn100");
      end if;
   end passTwoDollarsAndOneDollarCostShouldReturn100;

end Vending_Machine_Test_Procedures;
