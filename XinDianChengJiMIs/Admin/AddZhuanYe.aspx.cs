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
public partial class Admin_AddZhuanYe : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Getxueyuan();
        }
    }
    private void Getxueyuan()
    {

        DropDownList1.DataSource = data.GetDataReader("select * from  XueYuanInfo");
        DropDownList1.DataTextField = "Name";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into dbo.ZhuanYe(name,XueYuanId,XueYuanName)values('" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "')");
        Alert.AlertAndRedirect("添加成功", "ZhuanYeManger.aspx");
    }

}
