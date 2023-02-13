using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace Project.App_Code
{/// <summary>
/// class contains functions used to input and output users into database (sign-up/sign-in)
/// </summary>
    public class Userfunctions
    {
        private string FN { get; set; }
        private string LN { get; set; }
        private string Email { get; set; }
        private string Pass { get; set; }
        private string QuestionPass { get; set; }
        private string QuestionAnswer { get; set; }
        private bool IsAdmin { get; set; }
        public Userfunctions()
        {

        }
        public Userfunctions(string FN, string LN, string Email, string Pass, string QuestionPass, string QuestionAnswer, bool IsAdmin)
        {//constructor for class
            this.FN = FN;
            this.LN = LN;
            this.Email = Email;
            this.Pass = Pass;
            this.QuestionPass = QuestionPass;
            this.QuestionAnswer = QuestionAnswer;
            this.IsAdmin = IsAdmin;
        }
        public DataTable GetAllUsers()
        {//returns back a datatable filled with entire data inside DB
            string FileName = "DB.accdb";
            string strSQL;
            strSQL = "select * from customers";
            return DBfunctions.SelectFromTable(strSQL, FileName);
        }
        
        public void DeleteSelectedUser(string em)
        {//function deletes a selected user (admin function)
            string FileName = "DB.accdb";
            string StrSql = "delete * from users where EMAIL'" + em + "'";
            DBfunctions.ChangeTable(StrSql, FileName);
        }
        public DataTable GetUserByEmail(string Email)
        {
            string FileName = "DB.accdb";
            string strSQL;
            strSQL = "select * from customers where email='" + Email + "'";
            DataTable dt = DBfunctions.SelectFromTable(strSQL, FileName);
            return dt;
        }
    }
}