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

public partial class Login : System.Web.UI.Page
{
    SqlDataReader dr;
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }



   
    protected void Submit1_ServerClick1(object sender, EventArgs e)
    {
        if (UserName.Value == "" && PassWord.Value == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


        }
        else
        {
            if (DropDownList1.SelectedValue == "管理员")
            {
                dr = data.GetDataReader("select * from  Admin where Admin='" + UserName.Value + "'and Pwd='" + PassWord.Value + "' ");
                if (dr.Read())
                {
                    Session["adminid"] = dr["id"].ToString();//Session 标记
                    Session["admin"] = dr["Admin"].ToString();
                    Response.Redirect("admin/index.html");

                }
                else
                {
                    Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Login.aspx");
                }
            }
            if (DropDownList1.SelectedValue == "教师")
            {
                dr = data.GetDataReader("select * from  Teachter  where GongHao='" + UserName.Value + "'and Pwd='" + PassWord.Value + "' ");
                if (dr.Read())
                {
                    Session["adminid"] = dr["id"].ToString();
                    Session["admin"] = dr["Name"].ToString();
                    Response.Redirect("Teachter/index.html");

                }
                else
                {
                    Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Login.aspx");
                }
            }
            if (DropDownList1.SelectedValue == "学生")
            {
                dr = data.GetDataReader("select * from  Student where GongHao='" + UserName.Value + "'and Pwd='" + PassWord.Value + "'");
                if (dr.Read())
                {
                    Session["adminid"] = dr["id"].ToString();
                    Session["admin"] = dr["Name"].ToString();
                    Session["XueHao"] = dr["Name"].ToString();
                    Session["ClassId"] = dr["ClassId"].ToString();
                    Session["ZhuanYeID"] = dr["ZhuanYeID"].ToString();
                    Response.Redirect("Student/index.html");
                }
                else
                {
                    Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Login.aspx");
                }
            }


        }


    }
}
