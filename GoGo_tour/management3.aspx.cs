using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBAccess;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace GoGo_tour
{
    public partial class management3 : System.Web.UI.Page
    {
        static string ConnStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        SqlConnection conn = new SqlConnection(ConnStr);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ViewName_admin"] != null)
            {
                string viewname = Session["ViewName_admin"].ToString();
                this.head_right.InnerHtml = "欢迎使用勾勾网管理系统," + viewname + ",<a href=\"login.aspx\" >退出</a>";
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = this.Text1.Value;

            string jieshao = this.Text2.Value;



            string dizhi = this.Text3.Value;
            string pf = this.Text4.Value;
            string np = this.Text5.Value;
            string op = this.Text6.Value;
            string msg = this.Text7.Value;
            try
            {
                string sql = "insert into [dbo].[tour_info] values('" + name + "','" + jieshao + "','" + dizhi + "','" + pf + "','" + np + "','" + op + "','" + msg + "','" + msg + "')";
                conn.Open();
                SqlCommand com = new SqlCommand(sql, conn);
                if (com.ExecuteNonQuery() > 0)
                {
                    conn.Close();
                    this.Label9.Text = "添加成功";
                }
            }
            catch (Exception)
            {

                conn.Close();
            }
           
            
        }
    }
}