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
public partial class Admin_ModifyTechter : System.Web.UI.Page
{
      Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Type();
            GetArticle();
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
    private void GetArticle()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Teachter where id=" + id);
        dr.Read();
        txtname.Text = dr["Name"].ToString();
        txtds.Text = dr["Ds"].ToString();
        DropDownList1.Items[0].Text = dr["Sex"].ToString();
        DropDownList2.Items[0].Text = dr["XueYuan"].ToString();
        pic.Text = dr["Photo"].ToString();

        Image1.ImageUrl = "../uploads/" + dr["Photo"].ToString();

        txtLoginName.Text = dr["GongHao"].ToString();
        txttime1.Value = dr["chushengriqi"].ToString();


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
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update   Teachter set Name='" + txtname.Text + "',Ds='" + txtds.Text + "',Sex='" + DropDownList1.SelectedItem.Text + "', XueYuan='" + DropDownList2.SelectedItem.Text + "', Photo='" + pic.Text + "',GongHao='" + txtLoginName.Text + "',chushengriqi='" + txttime1.Value + "',Pwd='" + TextBox1.Text + "'   where id=" + id);

        Alert.AlertAndRedirect("修改成功！", "TeachterList.aspx");
    }
}
