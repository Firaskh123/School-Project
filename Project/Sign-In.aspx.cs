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
    public partial class Sign_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string em = TextBox3.Text;
            string pass = TextBox4.Text;
            string FileName = "DB.accdb";
            string sqlStr = "select * from Customers where EMAIL='" + em + "' and pass='" + pass + "'";
            try
            { //if an issue appears, it is due to pressing [enter] instead of the login button
                DataTable dt = DBfunctions.SelectFromTable(sqlStr, FileName);
                if (dt.Rows.Count > 0)
                {
                    Session["fullname"] = dt.Rows[0][0].ToString();
                    Session["email"] = em;
                    Session["Gender"] = dt.Rows[0][4];
                    if ((bool)dt.Rows[0][8] != true)
                    {
                        Response.Redirect("~/- Logged in/Logged_Home.aspx");
                    }
                    else
                    {//in-case of admin log in
                        Session["Admin"] = "active";
                        Response.Redirect("~/- Admin/AdminPage.aspx");
                    }
                }
                else
                {
                    Labelforerrors.Text = "No valid user in such email and password.";
                }
            }
            catch (Exception ex)
            {
                Labelforerrors.Text = ex.Message;
            }
            Labelforerrors.Visible = true;
        }
    }
}
