using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using Project.App_Code;

namespace Project
{
    public partial class Logged_MyCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { //this part will evaluate the price of all items in cart
            string FileName = "DB.accdb";
            string sqlstr = "SELECT * FROM Orders WHERE Email ='" + Session["email"].ToString() + "' AND Status ='InCart'";
            DataTable dt = DBfunctions.SelectFromTable(sqlstr, FileName);
            double sum = 0;
            for(int i=0;i<dt.Rows.Count;i++)
            { //sum is equal to price of each product multiplied by amount
                sum += double.Parse(dt.Rows[i][4].ToString()) * int.Parse(dt.Rows[i][5].ToString());
            } 
            TextBoxTotal.Text = sum.ToString();
            TextBox1.Text = sum.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {//function moves to payment panel
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {//function goes back to order list
            Panel2.Visible = false;
            Panel1.Visible = true;
        }
    }
}