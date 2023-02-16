using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project.App_Code;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace Project
{
    public partial class UnLoggedForgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonCheckEmail_Click(object sender, EventArgs e)
        {//function checks if email has a column in DB
            string FileName = "DB.accdb";
            string sqlstrVALID = "select * from Customers where EMAIL='" + TextBox1.Text + "'";
            try
            {
                DataTable dt = DBfunctions.SelectFromTable(sqlstrVALID, FileName);
                if (dt.Rows.Count > 0)
                {
                    Email_entrance.Visible = false;
                    Verification_label.Text = dt.Rows[0][6].ToString();
                    verification_entrance.Visible = true;
                }
                else
                {
                    Labelforerrors.Text = "Invalid Email.";
                }
            }
            catch (Exception ex)
            {
                Labelforerrors.Text = ex.Message;
            }
            Labelforerrors.Visible = true;
        }

        protected void ButtonCheckValidation_Click(object sender, EventArgs e)
        {//function checks if the answer is the same to the question
            string FileName = "DB.accdb";
            string sqlstrVALID = "select * from Customers where EMAIL='" + TextBox1.Text + "' AND PassAnswer='" + TextBox2.Text + "'";
            try
            {
                DataTable dt = DBfunctions.SelectFromTable(sqlstrVALID, FileName);
                if (dt.Rows.Count > 0)
                {
                    verification_entrance.Visible = false;
                    Changepassword.Visible = true;
                    //function needs to be finished, lacking this function for validation and the function for changing password
                }
                else
                {
                    Labelforerrors0.Text = "The answer is not correct.";
                }
            }
            catch (Exception ex)
            {
                Labelforerrors0.Text = ex.Message;
            }
            Labelforerrors0.Visible = true;
        }
        protected void ButtonToChangePass_Click(object sender, EventArgs e)
        {//function to change password for the current user
            string FileName = "DB.accdb";
            string sqlStr = "select * from Customers where EMAIL='" + TextBox1.Text + "' and PassAnswer='" + TextBox2.Text + "'";
            try
            {
                DataTable dt = DBfunctions.SelectFromTable(sqlStr, FileName);
                if (TextBox3.Text == dt.Rows[0][3].ToString())
                {
                    Labelforerrors1.Text = "New Password cannot be the same as old Password.";
                }
                else
                {
                    string sqlchangestr = "UPDATE Customers SET pass='" + TextBox4.Text + "' WHERE EMAIL='" + TextBox1.Text + "' AND PassAnswer='" + TextBox2.Text + "'";
                    try
                    {
                        DBfunctions.ChangeTable(sqlchangestr, FileName);
                        Labelforerrors1.Text = "Password has been changed successfully";
                        //the next lines are copied from sign in, user will be directed to the logged in home
                        Session["fullname"] = dt.Rows[0][0].ToString();
                        Session["email"] = TextBox1.Text;
                        Session["Gender"] = dt.Rows[0][4];
                        if ((bool)dt.Rows[0][8] != true)
                        {
                            Response.Redirect("~/- Logged in/Logged_Home.aspx");
                        }
                        else
                        {//incase of admin log in
                            Response.Redirect("~/- Admin/AdminPage.aspx");
                        }
                    }
                    catch (Exception ex)
                    {
                        Labelforerrors1.Text = ex.Message;
                    }
                }

            }
            catch (Exception ex)
            {
                Labelforerrors1.Text = ex.Message;
            }
            Labelforerrors1.Visible = true;
        }

        //next functions are for "go back" buttons
        protected void Button13_Click(object sender, EventArgs e)
        {//returns to the email panel
            verification_entrance.Visible = false;
            Email_entrance.Visible = true;
        }

        protected void Button14_Click(object sender, EventArgs e)
        {//returns to the verification panel
            Changepassword.Visible = false;
            verification_entrance.Visible = true;
        }


    }

}
