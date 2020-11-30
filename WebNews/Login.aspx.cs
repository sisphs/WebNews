using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNews
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public void Button1_Click(object sender, EventArgs e)
        {
            login();
        }

        public void login()
        {
            string str = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            string sql = "select * from [user] where username=@userName and password=@password";
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.Parameters.Add("userName", TextBox1.Text);
            comm.Parameters.Add("password", TextBox2.Text);
            SqlDataReader sdr = comm.ExecuteReader();
            if (sdr.Read())
            {
                Session["userName"] = TextBox1.Text;
                Session["password"] = TextBox2.Text;
                Session["level"] = sdr.GetString(3);
                Response.Write("<script>alert('欢迎" + Session["userName"] + ",您成功登录!');location.href='https://localhost:44399/Message.aspx';</script>");
     
            }
            else
            {
                lblMessage.Text = "无法登陆，用户名或密码错误！";
                Response.Redirect("login.aspx");
            }

            //Server.Transfer("../secure/report/test2.aspx");
            //Response.Write("<script>alert('登录成功欢迎您');location.href='../secure/report/test2.aspx';</script>");
            //Response.Write("../secure/report/test.aspx");
            //Response.Redirect("../secure/report/test.aspx");
            conn.Close();

        
    

        }
    }
}