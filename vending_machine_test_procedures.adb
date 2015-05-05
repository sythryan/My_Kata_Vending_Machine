with vending_machine; use vending_machine;
with Ada.Text_IO; use Ada.Text_IO;
-- Author : Syth Ryan
package body Vending_Machine_Test_Procedures is

   Four_Quarters          : constant Coin_Array(1..4) := (Quarter,Quarter,Quarter,Quarter);
   One_Quarter_One_Dime_One_Nickel : constant Coin_Array(1..3) := (Quarter,Dime,Nickel);

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

   procedure passTwoDollarsAndOneDollarCostToMakeChangeShouldReturn100 is
   begin
      if (Make_Change(Money =>200, Cost=>100) = 100) then
         Put_Line("+ PASSED: passTwoDollarsAndOneDollarCostToMakeChangeShouldReturn100");
      else
         Put_Line("- FAILD: passTwoDollarsAndOneDollarCostToMakeChangeShouldReturn100");
      end if;
   end passTwoDollarsAndOneDollarCostToMakeChangeShouldReturn100;
   ------------------------------------------------------

   procedure passOneDollarAndZeroCostToReturnCoinsShouldReturn4Quarters is
   begin
      if (Return_Coins(Money =>100, Cost=>0) = Four_Quarters) then
         Put_Line("+ PASSED: passOneDollarAndZeroCostToReturnCoinsShouldReturn4Quarters");
      else
         Put_Line("- FAILD: passOneDollarAndZeroCostToReturnCoinsShouldReturn4Quarters");
      end if;
   end passOneDollarAndZeroCostToReturnCoinsShouldReturn4Quarters;
   ------------------------------------------------------

   procedure passOneDollarAndSixtyCostToReturnCoinsShouldReturn1Quarter1Dime1Nickel is
   begin
      if (Return_Coins(Money => 100, Cost => 60) = One_Quarter_One_Dime_One_Nickel) then
         Put_Line("+ PASSED: passOneDollarAndSixtyCostToReturnCoinsShouldReturn1Quarter1Dime1Nickel");
      else
         Put_Line("- FAILD: passOneDollarAndSixtyCostToReturnCoinsShouldReturn1Quarter1Dime1Nickel");
      end if;
   end passOneDollarAndSixtyCostToReturnCoinsShouldReturn1Quarter1Dime1Nickel;
   ------------------------------------------------------

   procedure passCandyToSoldOutShouldReturnFalse is
   begin
      if (Sold_Out(Product => Candy) = False) then
         Put_Line("+ PASSED: passCandyToSoldOutShouldReturnFalse");
      else
         Put_Line("- FAILD: passCandyToSoldOutShouldReturnFalse");
      end if;
   end passCandyToSoldOutShouldReturnFalse;
   ------------------------------------------------------

   procedure callingExactChangeOnlyShouldReturnFalse is
   begin
      if (Sold_Out(Product => Candy) = False) then
         Put_Line("+ PASSED: callingExactChangeOnlyShouldReturnFalse");
      else
         Put_Line("- FAILD: callingExactChangeOnlyShouldReturnFalse");
      end if;
   end callingExactChangeOnlyShouldReturnFalse;

end Vending_Machine_Test_Procedures;
