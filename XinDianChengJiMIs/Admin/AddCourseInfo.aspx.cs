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
public partial class Admin_AddCourseInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Getxueyuan();

            DropDownList2.DataSource = data.GetDataReader("select * from  ZhuanYe where XueYuanId='" + DropDownList1.SelectedValue + "'");
            DropDownList2.DataTextField = "name";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataBind();

            DropDownList3.DataSource = data.GetDataReader("select * from  Teachter");
            DropDownList3.DataTextField = "Name";
            DropDownList3.DataValueField = "id";
            DropDownList3.DataBind();



            DropDownList4.DataSource = data.GetDataReader("select * from  dbo.ClassInfo where ZhuanYeID='" + DropDownList2.SelectedValue + "'");
            DropDownList4.DataTextField = "name";
            DropDownList4.DataValueField = "id";
            DropDownList4.DataBind();
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
        data.RunSql("insert into CourseInfo(name,XueYuanId,XueYuanName,ZhuanYeId,ZhuanYeName,Tid,TName,ZhouQi,ZuiDaRenShu,XueFen,ClassId,ClassName)values('" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedValue + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + DropDownList4.SelectedValue + "','" + DropDownList4.SelectedItem.Text + "')");
        Alert.AlertAndRedirect("添加成功", "AddCourseInfo.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.DataSource = data.GetDataReader("select * from  ZhuanYe where XueYuanId='" + DropDownList1.SelectedValue + "'");
        DropDownList2.DataTextField = "name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList4.DataSource = data.GetDataReader("select * from  dbo.ClassInfo where ZhuanYeID='" + DropDownList2.SelectedValue + "'");
        DropDownList4.DataTextField = "name";
        DropDownList4.DataValueField = "id";
        DropDownList4.DataBind();

    }
}
