using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace Project.App_Code
{/// <summary>
/// all functions that would connect C# code with SQL in the database
/// </summary>
    public class DBfunctions
    {
        public DBfunctions()
        {
        }
        public static OleDbConnection GenerateConnection(string FileName)
        {

            OleDbConnection conObj = new OleDbConnection();
            conObj.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + FileName) + ";Persist Security Info=False";
            conObj.Open();
            return conObj;
        }
        public static void ChangeTable(string sqlString, string FileName)
        {
            OleDbConnection conObj = GenerateConnection(FileName);
            OleDbCommand cmd = new OleDbCommand(sqlString, conObj);
            cmd.ExecuteNonQuery();
            conObj.Close();
        }
        public static DataTable SelectFromTable(string sqlString, string FileName)
        {
            OleDbConnection conObj = GenerateConnection(FileName);
            OleDbDataAdapter daObj = new OleDbDataAdapter(sqlString, conObj);
            DataSet dsUser = new DataSet();
            daObj.Fill(dsUser);
            DataTable dt = dsUser.Tables[0];
            conObj.Close();
            return dt;
        }
    }
}