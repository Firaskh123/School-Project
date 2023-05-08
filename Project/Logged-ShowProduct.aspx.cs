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
    public partial class Logged_ShowProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["selectedItemRow"] == null)
                Response.Redirect("AfterLogin.aspx");
            if (!IsPostBack)
            {
                GridViewRow selectedRow = (GridViewRow)Session["selectedItemRow"];
                DisplayItemDetails(selectedRow, (string)Session["email"]);
            }
        }
        private void DisplayItemDetails(GridViewRow selectedRow, string ClientEmail)
        {
            this.TextBoxProdCode0.Text = selectedRow.Cells[1].Text;
            this.TextBoxProdName0.Text = selectedRow.Cells[2].Text;
            this.TextBoxProdCat0.Text = selectedRow.Cells[3].Text;
            this.TextBoxProdPrice0.Text = selectedRow.Cells[4].Text;
            this.TextBoxDescription0.Text = selectedRow.Cells[6].Text;
            string sqlStr = "select * from products where productcode ='" + this.TextBoxProdCode0.Text + "'";

            DataTable dt = DBfunctions.SelectFromTable(sqlStr, "MyDB.accdb");
            this.ImageProduct0.ImageUrl = dt.Rows[0][5].ToString();
            Session["InStock"] = dt.Rows[0][3].ToString();
            Label2.Text = "Amount of products in stock is :" + dt.Rows[0][3].ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (int.Parse(TextBoxProdAmount0.Text) > int.Parse(Session["InStock"].ToString()))
            {//checks if amount ordered is less than in stock
                Label1.Text = "Not enough products in stock";
                Label1.Visible = true;
            }
            else
            {
                string FileName = "DB.accdb";
                string sqlstr = "insert into orders(Email,ProductCode,ProductName,ProductCategory,ProductPrice,Amount,Status,OrderDate) values('";
                sqlstr += Session["email"].ToString() + "','";
                sqlstr += TextBoxProdCode0.Text + "','";
                sqlstr += TextBoxProdName0.Text + "','";
                sqlstr += TextBoxProdCat0.Text + "','";
                sqlstr += TextBoxProdPrice0.Text + "',";
                sqlstr += TextBoxProdAmount0.Text + ",'";
                sqlstr += "InCart" + "','";
                sqlstr += DateTime.UtcNow + "')";
            }

        }
    }
}