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
            string sqlStr = "select * from Users where EMAIL='" + em + "' and PASS='" + pass + "'";
            try
            { //if an issue appears, it is due to pressing [enter] instead of the login button
                DataTable dt = DBfunctions.SelectFromTable(sqlStr, FileName);
                if (dt.Rows.Count > 0)
                {
                    Session["fullname"] = dt.Rows[0][0].ToString();
                    Session["email"] = em;
                    if ((bool)dt.Rows[0][7] != true)
                    {
                        Response.Redirect("Logged-Browse.aspx");
                    }
                    else
                    {//in-case of admin log in
                        Session["Admin"] = "active";
                        Response.Redirect("Admin-Main.aspx"); //page hasn't been done yet
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
