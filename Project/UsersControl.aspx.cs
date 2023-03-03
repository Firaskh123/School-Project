using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class UsersControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BuildTable()
        {//function to build table full of all users data
            GridViewAllUsers.DataBind();
        }

        protected void GridViewAllUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {//function deletes user from database
            int index = GridViewAllUsers.SelectedIndex;
            string x = GridViewAllUsers.SelectedRow.Cells[2].Text;
        }
        protected void ButtonRefresh_Click(object sender, EventArgs e)
        {//refresh table
            BuildTable();
        }

        
    }
}