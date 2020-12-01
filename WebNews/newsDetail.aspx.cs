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
    public partial class newsDetail : System.Web.UI.Page
    {

        public String filename="";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null)
            {
                Response.Redirect("login.aspx");
            }
            loadContent();
        }

        public void loadContent()
        {
            int Id= int.Parse(Request.QueryString["id"]);
            
            string str = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            string sql = "select title,authorname,content,filename from [news] where Id=@Id";
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.Parameters.Add("Id", Id);
            SqlDataReader sdr = comm.ExecuteReader();
            while (sdr.Read())
            {
                title.Text= sdr.GetString(0);
                author.Text = sdr.GetString(1);
                content.Text = sdr.GetString(2);                             
                if(!sdr.IsDBNull(3)){
                    filename = sdr.GetString(3);
                }

            }

            conn.Close();




        }
    }
}