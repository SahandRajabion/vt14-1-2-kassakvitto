using KassaKvitto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KassaKvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void Button_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Receipt kvitto = new KassaKvitto.Model.Receipt(double.Parse(TextBox1.Text));




                TotalSumma.Text = string.Format("Total: {0:c}", kvitto.Subtotal);
                RabbatIProcent.Text = string.Format("Rabattsats: {0:p0}", kvitto.DiscountRate);
                RabbatIKr.Text = string.Format("Rabatt: {0:c}", kvitto.MoneyOff);
                AttBetala.Text = string.Format("Att betala: {0:c}", kvitto.Total);
                Kvittot.Visible = true;
            }
        }

       
    }
}