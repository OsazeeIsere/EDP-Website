using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
namespace EDP_Website
{
    public class settings
    {
        private string GetConnectionString()
        {
            string str = ConfigurationManager.ConnectionStrings["myConnString"].ConnectionString;
            return str;
        }
        public System.Data.DataTable getdatabase(string strcommand)
        {
            System.Data.DataTable tempgetdatabase = null;
            tempgetdatabase = new System.Data.DataTable();
            MySql.Data.MySqlClient.MySqlConnection cn = new MySql.Data.MySqlClient.MySqlConnection();
            MySql.Data.MySqlClient.MySqlDataAdapter ad = new MySql.Data.MySqlClient.MySqlDataAdapter();
            MySql.Data.MySqlClient.MySqlCommand cm = new MySql.Data.MySqlClient.MySqlCommand();
            cn.ConnectionString = GetConnectionString();
            cn.Open();
            cm.CommandText = strcommand;
            ad.SelectCommand = cm;
            cm.Connection = cn;
            System.Data.DataTable dt = new System.Data.DataTable();
            ad.Fill(dt);
            tempgetdatabase = dt;
            cn.Close();
            return tempgetdatabase;
        }
        public void adddata(string strinsert)
        {
            MySql.Data.MySqlClient.MySqlConnection cn = new MySql.Data.MySqlClient.MySqlConnection();
            MySql.Data.MySqlClient.MySqlDataAdapter ad = new MySql.Data.MySqlClient.MySqlDataAdapter();
            MySql.Data.MySqlClient.MySqlCommand cm = new MySql.Data.MySqlClient.MySqlCommand();

            cn.ConnectionString = GetConnectionString();
            cn.Open();
            cm.CommandText = strinsert;
            cm.Connection = cn;
            cm.ExecuteNonQuery();
            cn.Close();
        }
        public void updatetable(string strupdate)
        {
            MySql.Data.MySqlClient.MySqlConnection cn = new MySql.Data.MySqlClient.MySqlConnection();
            MySql.Data.MySqlClient.MySqlDataAdapter ad = new MySql.Data.MySqlClient.MySqlDataAdapter();
            MySql.Data.MySqlClient.MySqlCommand cm = new MySql.Data.MySqlClient.MySqlCommand();
            string strconnection = "";
            strconnection = "server= localhost;port=3306;database=psndb;uid=root;pwd=prayer";
            cn.ConnectionString = strconnection;
            cn.Open();
            cm.CommandText = strupdate;
             cm.Connection = cn;
            cm.ExecuteNonQuery();
            cn.Close();
        }
    }
}