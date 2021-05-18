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
    public string zuoyedananPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList2.DataSource = data.GetDataReader("select * from  dbo.CourseInfo  where Tid='" + Session["adminid"].ToString() + "' ");
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataBind();

            DropDownList3.DataSource = data.GetDataReader("select * from  dbo.XueQi");
            DropDownList3.DataTextField = "Name";
            DropDownList3.DataValueField = "id";
            DropDownList3.DataBind();

             

            DropDownList1.DataSource = data.GetDataReader("select * from  ClassInfo  ");
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
            GridView3.DataSource = data.GetDataReader("select *  from  dbo.Student where  ClassId='" + DropDownList1.SelectedValue + "'  ");
            GridView3.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        foreach (GridViewRow dr1 in GridView3.Rows)
        {
            string name = ((Label)dr1.FindControl("Label11")).Text.Trim();
            string id = ((Label)dr1.FindControl("Labelid")).Text.Trim();
            string Score = ((TextBox)dr1.FindControl("Score")).Text.Trim();
            string XueFen = "0";//((TextBox)dr1.FindControl("XueFen")).Text.Trim();
            string shangji = ((TextBox)dr1.FindControl("shangji")).Text.Trim();
            string kaoshi = ((TextBox)dr1.FindControl("kaoshi")).Text.Trim();
            string zong = ((TextBox)dr1.FindControl("zong")).Text.Trim();
            SqlDataReader dr = data.GetDataReader("select * from dbo.Score where  CourseId='" + DropDownList2.SelectedValue + "'  and StId='" + id + "' and XueQi='" + DropDownList3.SelectedValue + "' ");
            if (dr.Read())
            {


                Alert.AlertAndRedirect("该学生本课程同一个学期已经添加过了不能重复添加成绩", "AddScore.aspx");

            }
            else
            {


                data.RunSql("insert into  Score(XueQi,Score,StName,CourseId,CourseName,StId,ClassID,Tid,XueFen,shangji,kaoshi,zong)values('" + DropDownList3.SelectedItem.Text + "','" + Score + "','" + name + "'," + DropDownList2.SelectedValue + ",'" + DropDownList2.SelectedItem.Text + "','" + id + "','" + DropDownList1.SelectedValue + "','" + Session["adminid"].ToString() +"','"+ XueFen+"','" + shangji + "','" + kaoshi + "','" + zong + "')");






                Alert.AlertAndRedirect("添加成功！查看成绩列表", "ScoreManger.aspx");


            }


        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView3.DataSource = data.GetDataReader("select *  from  dbo.Student where  ClassId='" + DropDownList1.SelectedValue + "'  ");
        GridView3.DataBind();
    }
}