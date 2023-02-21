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
    public partial class Product_Control : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {//this will prevent the server from rebuilding the table when page is refreshed
                BuildTable();
            }
        }
        protected void BuildTable()
        {//function to build table full of all users data
            GridViewAllUsers.DataBind();
        }

        protected void GridViewAllUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {//function deletes user from database
            GridViewAllUsers.DeleteRow(GridViewAllUsers.SelectedIndex);
        }
        
        protected void ButtonView_Click(object sender, EventArgs e)
        {
            if (Panel2.Visible) 
                Panel2.Visible = false;

            Panel1.Visible = !Panel1.Visible;  

        }

        protected void ButtonRefresh_Click(object sender, EventArgs e)
        {//refresh table
            BuildTable();
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            if (Panel1.Visible)
                Panel1.Visible = false;

            Panel2.Visible = !Panel2.Visible;
        }

        protected void GridViewAllUsers_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridViewAllUsers_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}