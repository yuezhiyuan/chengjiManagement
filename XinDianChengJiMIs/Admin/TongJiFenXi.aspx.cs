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
using Excel = Microsoft.Office.Interop.Excel; 
public partial class Admin_XueQiChengJi : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    Alert js = new Alert();
    public float youxiulv = 0;
    public float jigelv = 0;
    public float bujigelv = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList2.DataSource = data.GetDataReader("select * from  dbo.CourseInfo    ");
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataBind();


            DropDownList3.DataSource = data.GetDataReader("select * from dbo.ClassInfo ");
            DropDownList3.DataTextField = "Name";
            DropDownList3.DataValueField = "id";
            DropDownList3.DataBind();
            DropDownList1.DataSource = data.GetDataReader("select * from  XueQi  ");
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();

            GetInfo();
        }
    }
    private void GetInfo()
    {
        try
        {
            gvInfo.DataSource = GetCodeBy(0);
            gvInfo.DataBind();
            
         
        }
        catch
        {

        }

    }
    protected void gvInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvInfo.PageIndex = e.NewPageIndex;
        GetInfo();
    }
    protected void gvInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //鼠标移动变色
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //当鼠标放上去的时候 先保存当前行的背景颜色 并给附一颜色 
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f6f6f6',this.style.fontWeight='';");
            //当鼠标离开的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
        }
        //单击行改变行背景颜色 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onclick", "this.style.backgroundColor='#f6f6f6'; this.style.color='buttontext';this.style.cursor='default';");
        }

    }

    public DataSet GetCodeBy(int iCount)
    {
        SqlHelper date = new SqlHelper();

        string strTop = "";

        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }

        string sql = "select  " + strTop + "  * from [Score]  where   XueQi='" + DropDownList1.SelectedItem.Text + "' and CourseId ='" + DropDownList2.SelectedValue + "'  and ClassID='" + DropDownList3.SelectedValue + "'    ";
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        SqlCommand cmd = new SqlCommand(sql, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = null;
        try
        {
            con.Open();
            ds = new DataSet();
            da.Fill(ds);

        }
        catch (SqlException ex)
        {
            throw ex;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return ds;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GetInfo();



        try
        {
            string sqlreshu = data.ReturnSql("select   count(*) from [Score]  where   XueQi='" + DropDownList1.SelectedItem.Text + "' and CourseId ='" + DropDownList2.SelectedValue + "'   and ClassID='" + DropDownList3.SelectedValue + "' ");
            //查询分数大于90的人数
            string sql90 = data.ReturnSql("select   count(*) from [Score]  where   XueQi='" + DropDownList1.SelectedItem.Text + "' and CourseId ='" + DropDownList2.SelectedValue + "'   and ClassID='" + DropDownList3.SelectedValue + "' and zong >= 90");
            string sqljige = data.ReturnSql("select   count(*) from [Score]  where   XueQi='" + DropDownList1.SelectedItem.Text + "' and CourseId ='" + DropDownList2.SelectedValue + "'   and ClassID='" + DropDownList3.SelectedValue + "' and zong >= 60");
            string sqbujike = data.ReturnSql("select   count(*) from [Score]  where   XueQi='" + DropDownList1.SelectedItem.Text + "' and CourseId ='" + DropDownList2.SelectedValue + "'   and ClassID='" + DropDownList3.SelectedValue + "' and zong < 60");
           
            youxiulv = float.Parse(sql90) / float.Parse(sqlreshu);
            //youxiulv= 33.1F;
            jigelv = float.Parse(sqljige) / float.Parse(sqlreshu);
            bujigelv = float.Parse(sqbujike) / float.Parse(sqlreshu);
            string sqlzongchengji = data.ReturnSql("select  sum(zong) as zongchengji from [Score]  where   XueQi='" + DropDownList1.SelectedItem.Text + "' and CourseId ='" + DropDownList2.SelectedValue + "'   and ClassID='" + DropDownList3.SelectedValue + "' ");

            Label1.Text = Convert.ToString(float.Parse(sqlzongchengji) / float.Parse(sqlreshu));//数据类型转换，将字符串转为浮点型输出

        }
        catch
        {
            Label1.Text = "当前成绩不存在！不能统计！";
        }

    }
}
