using System;
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
            try
            {
                Userfunctions obj = new Userfunctions();
                GridViewAllUsers.DataSource = obj.GetAllUsers();
                GridViewAllUsers.DataBind();
            }
            catch (Exception ex)
            {
                LabelFortable.Text = ex.Message;
            }
        }

        protected void GridViewAllUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            {//function deletes user from database
                GridViewRow row = GridViewAllUsers.SelectedRow;
                if (row != null)
                {
                    string em = row.Cells[5].Text;
                    Userfunctions obj = new Userfunctions();
                    try
                    {
                        obj.DeleteSelectedUser(em);
                        BuildTable();
                    }
                    catch (Exception ex)
                    {
                        LabelFortable.Text = ex.Message;
                    }
                }
            }
        }

        protected void GridViewAllUsers_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }

        protected void GridViewAllUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void ButtonView_Click(object sender, EventArgs e)
        {
            if (Panel2.Visible) 
                Panel2.Visible = false;

            Panel1.Visible = !Panel1.Visible;  

        }
    }
}