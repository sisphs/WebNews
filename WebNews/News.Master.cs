using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNews
{
    public partial class News : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text ="欢迎"+Session["userName"].ToString()+"访问！";
        }
        protected void Label4_click(object sender, EventArgs e)
        {
            
            Session["userName"] = null;
            Session["password"] = null;
            ClearClientPageCache();
            Response.Redirect("login.aspx");


        }


        public void ClearClientPageCache()
        {
            //清除浏览器缓存
            Response.Buffer = true;
            Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Expires = 0;
            Response.CacheControl = "no-cache";
            Response.Cache.SetNoStore();
        }
}
}