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


end Vending_Machine_Test_Procedures;
