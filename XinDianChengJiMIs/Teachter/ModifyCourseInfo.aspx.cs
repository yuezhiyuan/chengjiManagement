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
public partial class Admin_ModifyCourseInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DropDownList3.DataSource = data.GetDataReader("select * from  dbo.JiaoShi  ");
            DropDownList3.DataTextField = "Name";
            DropDownList3.DataValueField = "id";
            DropDownList3.DataBind();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string ShengKeSJ = "第" + DropDownList1.SelectedValue + "周" + "第" + DropDownList2.SelectedValue + "节";
        SqlDataReader dr = data.GetDataReader("select * from CourseInfo where ShengKeSJ='" + ShengKeSJ + "' and  DiDian='" + DropDownList3.SelectedItem.Text + "' and id<>'" + Request.QueryString["id"].ToString() + "' ");
        if (dr.Read())
        {
            Label2.Text = "当前教室已经授课！";
            return;
        }
        else
        {
            data.RunSql("update CourseInfo set  ShengKeSJ='" + ShengKeSJ + "',DiDian='" + DropDownList3.SelectedItem.Text + "'  where id=" + Request.QueryString["id"].ToString());
            Alert.AlertAndRedirect("安排成功！", "CourseInfoManger.aspx");
        }
    }
}