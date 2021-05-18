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

public partial class admin_AddAdmin : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into  Admin(Admin,pwd,Roule,Name)values('" + Name.Text + "','" + TextBox1.Text + "','系统管理员','" + TextBox3.Text + "')");
        Alert.AlertAndRedirect("添加成功", "adminlist.aspx");
    }
}
