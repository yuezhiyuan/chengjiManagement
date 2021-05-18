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
public partial class Admin_AddClassInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
            Getxueyuan();


            DropDownList2.DataSource = data.GetDataReader("select * from  dbo.ZhuanYe where XueYuanId='" + DropDownList1.SelectedValue + "'");
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataBind();
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
        data.RunSql("insert into ClassInfo(name,XueYuanId,XueYuanName,BanZhuRen,Tel,RenShu,ZhuanYeID,ZhuanYeName)values('" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + TextBox4.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList2.SelectedItem.Text+ "')");
        Alert.AlertAndRedirect("添加成功", "AddClassInfo.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.DataSource = data.GetDataReader("select * from  dbo.ZhuanYe where XueYuanId='"+DropDownList1.SelectedValue+"'");
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();


    }
}
