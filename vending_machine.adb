with Ada.Text_IO;
with Ada.Integer_Text_IO;
-- Author : Syth Ryan

-- Personal Note: Cents are not decimal, $1.00 equals an Integer of 100
package body Vending_Machine is

   function Accept_Coin (Coin : in Coin_Type) return Boolean is
   begin
      return coin /= Penny;
   end Accept_Coin;
   ----------------------------------------------------

   function Select_Product (Product : in Product_Type;
                            Money   : in Natural) return Boolean is
   begin
      case Product is
      when Cola =>
         Cola_In_Stock := Cola_In_Stock - 1;
         return Money >= 100; -- $1.00
      when Chips =>
         Chips_In_Stock := Chips_In_Stock - 1;
         return Money >= 50;  -- $0.50
      when Candy =>
         Candy_In_Stock := Candy_In_Stock - 1;
         return Money >= 65;  -- $0.65
      end case;
   end Select_Product;
   ----------------------------------------------------

   function Make_Change (Money : in Natural;
                         Cost  : in Natural) return Natural is
   begin
      return Money - Cost;
   end;
   ----------------------------------------------------

   function Return_Coins (Money : in Natural;
                          Cost  : in Natural)return Coin_Array is

      Index         : Positive := 1;
      Running_Total : Natural;
      Coins         : Coin_Array(1..50);
   begin
      Running_Total := Make_Change(Money => Money,
                                   Cost  => Cost);

      loop
         exit when Running_Total < 1;
         if (Running_Total >= 25) then
            Coins(Index) := Quarter;
            Running_Total := Running_Total - 25;
         elsif (Running_Total >= 10) then
            Coins(Index) := Dime;
            Running_Total := Running_Total - 10;
         else
            Coins(Index) := Nickel;
            Running_Total := Running_Total - 5;
         end if;
         Index := Index + 1;
      end loop;
      return Coins(1 .. Index - 1);
   end Return_Coins;
   ----------------------------------------------------

   function Sold_Out (Product : in Product_Type) return Boolean is
   begin
      case Product is
      when Cola =>
         return Cola_In_Stock < 1;
      when Chips =>
         return Chips_In_Stock < 1;
      when Candy =>
         return Candy_In_Stock < 1;
      end case;
   end Sold_Out;
   end Vending_Machine;
