﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using Project.App_Code;

namespace Project
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button_SignUpClick(object sender, EventArgs e)
        {//sign up function
            string FileName = "DB.accdb"; 
            string sqlStr = "insert into Users(FN,LN,EMAIL,PASS,COUNTRY,PassQuestion,PassAnswer) values('";
            sqlStr += TextBox1.Text + "','";
            sqlStr += TextBox2.Text + "','";
            sqlStr += TextBox3.Text + "','";
            sqlStr += TextBox4.Text + "','";
            sqlStr += DropDownList1.SelectedValue.ToString() + "','";
            sqlStr += DropDownList2.SelectedValue.ToString() + "','";
            sqlStr += TextBox6.Text + "')";
            string sqlstrVALID = "select * from Users where EMAIL='" + TextBox3.Text + "'";
            try
            {
                DataTable dt = DBfunctions.SelectFromTable(sqlstrVALID, FileName);
                if (dt.Rows.Count > 0)
                { //incase of users with same email
                    Labelforerrors.Text = "there is already a user on that email.";
                }
                else
                {
                    try
                    { 
                        DBfunctions.ChangeTable(sqlStr, FileName);
                        Labelforerrors.Text = "succesfully registered!";
                        Session["fullname"] = TextBox1.Text;
                        Session["email"] = TextBox3.Text;
                        if ((bool)dt.Rows[0][7] != true)
                        {
                            Response.Redirect("~/- Logged in/Logged_Home.aspx");
                        }
                        else
                        {//in-case of admin log in
                            Session["Admin"] = "active";
                            Response.Redirect("~/- Admin/AdminPage.aspx"); //page hasn't been done yet
                        }
                    }
                    catch (Exception ex)
                    {
                        Labelforerrors.Text = ex.Message;
                    }
                }
            }
            catch (Exception ex)
            {
                Labelforerrors.Text = ex.Message;
            }
            Labelforerrors.Visible = true;
        }

        protected void CheckBoxPerms_CheckedChanged(object sender, EventArgs e)
        {//function will confirm if user had pressed the check box
            if (CheckBoxPerms.Checked == true)
            {
                Button9.BackColor = System.Drawing.Color.Green;
            }
            else
                Button9.BackColor = System.Drawing.Color.White;
        }
    }
}
