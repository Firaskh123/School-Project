﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class LoggedViewCategories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["CategoryName"] = this.DataList1.SelectedValue.ToString();
            Response.Redirect("Logged-ViewProducts.aspx");
        }
    }
}