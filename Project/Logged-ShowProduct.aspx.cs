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
        }
    }
}