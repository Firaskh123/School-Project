﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {//a non admin account must not have access
                if (Session["email"] == null)
                    Response.Redirect("Home.aspx");
                else
                {
                    if ((Session["Admin"] != null) && !(Session["Admin"].ToString() == "active"))
                        Response.Redirect("Logged-Browse.aspx");
                }
            }
        }
    }
}