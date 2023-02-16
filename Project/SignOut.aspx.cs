using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class SignOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["fullname"] = dt.Rows[0][0].ToString();
            Session["email"] = em;
            Session["Gender"] = dt.Rows[0][4];
        }
    }
}