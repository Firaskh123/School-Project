﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class LoggedBrowse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {// moves user to a page with more info about the product
            Session["selectedItemRow"] = GridView1.SelectedRow;
            Response.Redirect("Logged-ShowProduct.aspx");
        }
    }
}