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
public partial class Teachter_ModifyScore : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataReader dr = data.GetDataReader("select * from Score where id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {

                TextBox2.Text = dr["zong"].ToString();
               // TextBox1.Text = dr["XueFen"].ToString();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("update Score set  zong=" + TextBox2.Text + "  where id=" + Request.QueryString["id"].ToString());
        Alert.AlertAndRedirect("修改成功", "ScoreManger.aspx");
    }
}
