using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KassaKvitto.Model
{
    public class Receipt
    {

        //Privat fält "_subtotal"
        private double _subtotal;

        //Används för att representera rabatten i procent.
        public double DiscountRate { get; private set; }

        //Används för att representera rabatten i kronor.
        public double MoneyOff { get; private set; }

        //Publik egenskap "Subtotal" som representerar hela köpsumman.
        public double Subtotal
        {
            get
            {
                return _subtotal;
            }
            private set
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException();       //Om den totala köpesumman skulle vara mindre än noll, kastas ett undantag.
                }
                _subtotal = value;
            }
        }

        //Används till att representera beloppet efter att rabatten dragits från den totala köpesumman.
        public double Total{get; private set;}

        
        //Publik metod Calulate. Denna metoden håller reda på själva uträkningen av kvittot, med ev. rabatter.
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            if (subtotal < 500)
            {
                DiscountRate = 0;
            }
            else if(subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            else if (subtotal < 5000)
            {
                DiscountRate = 0.10;
            }
            else
            {
                DiscountRate = 0.15;
            }

            //Totala Köpesumma multiplicerat med rabatten(belopp som ska dras av)
            MoneyOff = subtotal * DiscountRate;
           //Totala köpesumma minus belopp som ska dras av = (Total).
            Total = subtotal - MoneyOff;
        }


        //Konstruktorn Receipt.
        public Receipt (double subtotal)
        {
            Calculate(subtotal);
        }
    }

    
}