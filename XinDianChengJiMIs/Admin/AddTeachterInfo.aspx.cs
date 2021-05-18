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
public partial class Admin_AddTeachterInfo : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Type();
        }
    }
    /// <summary>
    /// 绑定类别
    /// </summary>
    private void Type()
    {

        DropDownList2.DataSource = data.GetDataReader("select * from  XueYuanInfo  ");
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploads/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../uploads/" + pic.Text;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr = data.GetDataReader("select * from Teachter where GongHao='" + txtLoginName.Text + "' ");
        if (dr.Read())
        {
            Label2.Text = "账号已经存在";
            return;
        }
     
        else
        {
            data.RunSql("insert into Teachter(Pwd,Name,Sex,XueYuan,GongHao,chushengriqi,Ds,Photo,ZhiCheng)values('" + TextBox1.Text + "','" + txtname.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + txtLoginName.Text + "','" + txttime1.Value + "','" + txtds.Text + "','" + pic.Text + "','" + DropDownList3.SelectedValue + "')");

            Alert.AlertAndRedirect("添加成功！", "TeachterList.aspx");
        }
    }
    protected void txtds_TextChanged(object sender, EventArgs e)
    {

    }
}
