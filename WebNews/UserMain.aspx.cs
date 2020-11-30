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
    public partial class UserMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String level = Session["level"].ToString().Trim();

            if (Session["userName"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (level == "user")
            {
                Response.Redirect("Message.aspx");
            }
        }
        protected void button_click(object sender, EventArgs e)
        {
            if(title.Text != ""&&content.Text != ""&&authorname.Text != ""){
                String P_str_name = this.FileUpload1.FileName;
                bool P_bool_fileOK = false;

                if (FileUpload1.HasFile)
                {
                    string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();

                    String[] allowedExtension = { ".pdf", ".doc", ".docx", ".pptx", ".xlsx" };

                    for (int i = 0; i < allowedExtension.Length; i++)
                    {
                        if (fileExtension == allowedExtension[i])
                        {
                            P_bool_fileOK = true;
                        }
                    }
                }

                if (P_bool_fileOK)
                {
                    this.FileUpload1.PostedFile.SaveAs(Server.MapPath("~/File/") + P_str_name);
                    Response.Write("<script>alert('上传成功！');</script>");

                    string str = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                    SqlConnection conn = new SqlConnection(str);
                    conn.Open();
                    string sql = "insert into news (title, content,authorname,filename) VALUES (@title,@content,@authorname,@filename)";
                    SqlCommand comm = new SqlCommand(sql, conn);
                    comm.Parameters.Add("title", title.Text);
                    comm.Parameters.Add("content", content.Text);
                    comm.Parameters.Add("authorname", authorname.Text);
                    comm.Parameters.Add("filename", P_str_name);
                    SqlDataReader sdr = comm.ExecuteReader();
                    conn.Close();

                    Response.Write("<script>alert('发布成功！');</script>");
                    title.Text = "";
                    content.Text = "";
                    authorname.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('附件格式要为（.pdf, .doc, docx, .pptx, .xlsx）');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('表单不能为空！');</script>");
            }

            
        }
    }
}