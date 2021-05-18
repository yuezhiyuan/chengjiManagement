using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class admin_Modifyadmin : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlHelper data = new SqlHelper();
            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from Admin where id=" + id);
            dr.Read();
            Name.Text = dr["Admin"].ToString();
            TextBox1.Text = dr["Name"].ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlHelper update = new SqlHelper();

        update.RunSql("update  Admin set Admin='" + Name.Text + "',Name='"+TextBox1.Text+"' where id=" + id);

        Alert.AlertAndRedirect("修改成功", "adminlist.aspx");
    }
}
