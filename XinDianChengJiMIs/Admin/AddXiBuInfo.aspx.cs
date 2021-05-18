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

public partial class Admin_AddXiBuInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
         

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into XueYuanInfo(Name,ZhuRen,Tel)values('" + txtUser.Text + "','" + TextBox2.Text + "','" + TextBox1.Text + "')");
        Alert.AlertAndRedirect("添加成功", "AddXiBuInfo.aspx");

    }
}
