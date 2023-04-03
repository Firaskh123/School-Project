using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.IO;
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
            Panel2.Visible = false;
            Panel3.Visible = false;

            Panel1.Visible = !Panel1.Visible;  
        }


        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel3.Visible = false;

            Panel2.Visible = !Panel2.Visible;
        }
        
        protected void ButtonAdd0_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;

            Panel3.Visible = !Panel3.Visible;
        }

        protected void GridViewAllUsers_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridViewAllUsers_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {//function adds a category to DB
            string File = "DB.accdb";
            string strFile;
            string despath;
            if (FileUpload2.PostedFile.ContentLength > 8048576)//size of 8 MegaBytes
            {//a file won't be accepted if larger than 8MB
                Labelforerrror.Text = "Large file! you can only upload an image up to 8MB";
            }
            else
            {
                Labelforerrror.Text = "";
                string strdir = Server.MapPath("~/Pictures/Categories");
                strFile = Path.GetFileName(FileUpload2.PostedFile.FileName);
                despath = Path.Combine(strdir, strFile);
                FileUpload1.PostedFile.SaveAs(despath); //saves file to server
                string sqlstr = "insert into Categories(CategoryName,CategoryImage) values('";
                sqlstr += TextBox3.Text + "','";
                sqlstr += strFile + "')";
                string sqlcheckcat = "select * from Categories where CategoryName='" + TextBox3.Text + "'";
                try
                {
                    DataTable dt = DBfunctions.SelectFromTable(sqlcheckcat, File);
                    if (dt.Rows.Count > 0)
                    {
                        Labelforerrror.Text = "Category already exists.";
                    }
                    else
                    {
                        try
                        {
                            DBfunctions.ChangeTable(sqlstr, File);
                            Labelforerrror.Text = "Successfully Added The Category!";
                        }
                        catch (Exception ex)
                        {
                            Labelforerrror.Text = ex.Message;
                        }
                    }
                }
                catch (Exception ex)
                {
                    Labelforerrror.Text = ex.Message;
                }
            }
            Labelforerrror.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {//function adds product to DB
            string File = "DB.accdb";
            string strFile;
            string despath;
            if (FileUpload1.PostedFile.ContentLength > 8048576)//size of 8 MegaBytes
            {//a file won't be accepted if larger than 8MB
                Labelforerrror.Text = "Large file! you can only upload an image up to 8MB";
            }
            else
            {
                Labelforerrror.Text = "";
                string strdir = Server.MapPath("~/Pictures/Products");
                strFile = Path.GetFileName(FileUpload1.PostedFile.FileName);
                despath = Path.Combine(strdir, strFile);
                FileUpload1.PostedFile.SaveAs(despath); //saves file to server
                string sqlstr = "insert into Products(ProductCode,ProductName,Category,Amount,Price,ProductImage) values('";
                sqlstr += TextBox1.Text + "','";
                sqlstr += TextBox2.Text + "','";
                sqlstr += DropDownList1.Text + "','";
                sqlstr += TextBox5.Text + "','";
                sqlstr += TextBox4.Text + "','";
                sqlstr += strFile + "')";
                string sqlcheckcat = "select * from Products where ProductCode='" + TextBox1.Text + "'";
                try
                {
                    DataTable dt = DBfunctions.SelectFromTable(sqlcheckcat, File);
                    if (dt.Rows.Count > 0)
                    {
                        LabelForErrors.Text = "Product already exists.";
                    }
                    else
                    {
                        try
                        {
                            DBfunctions.ChangeTable(sqlstr, File);
                            LabelForErrors.Text = "Successfully Added The Product!";
                        }
                        catch (Exception ex)
                        {
                            LabelForErrors.Text = ex.Message;
                        }
                    }
                }
                catch (Exception ex)
                {
                    LabelForErrors.Text = ex.Message;
                }
            }
            LabelForErrors.Visible = true;
        }
    }
}