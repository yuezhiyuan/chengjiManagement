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
using System.Data.OleDb;
public partial class Admin_TeachterList : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

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
    protected void btnDel_Click(object sender, EventArgs e)
    {
        for (int rowIndex = 0; rowIndex < gvInfo.Rows.Count; rowIndex++)
        {
            if (((CheckBox)gvInfo.Rows[rowIndex].Cells[0].FindControl("chkSelect")).Checked)
            {
                if (DelCode(Convert.ToInt32(gvInfo.DataKeys[rowIndex].Value)))
                {

                }
            }
        }
        GetInfo();
        js.Alertjs("删除成功！");
    }
    protected void btnSelectAll_Click(object sender, EventArgs e)
    {

        Button btn = (Button)sender;
        bool isOK = false;
        if (btn.Text == "全选")
        {
            isOK = true;
            //找到PagerTemplate中的全选按钮
            btnSelectAll.Text = "取消全选";
        }
        else
        {
            btnSelectAll.Text = "全选";
        }

        foreach (GridViewRow row in gvInfo.Rows)
        {
            ((CheckBox)row.Cells[0].FindControl("chkSelect")).Checked = isOK;
        }
    }
    public bool DelCode(int id)
    {
        bool isOK = false;
        string sql = "delete from [Teachter] where id=" + id;
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        SqlCommand cmd = new SqlCommand(sql, con);
        try
        {
            con.Open();
            if (cmd.ExecuteNonQuery() > 0)
                isOK = true;
        }
        catch (SqlException ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return isOK;
    }

    public DataSet GetCodeBy(int iCount)
    {
        SqlHelper date = new SqlHelper();

        string strTop = "";

        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }

        string sql = "select  " + strTop + "  * from [Teachter]";
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

    //上传excel数据到数据库------------------------------------------>
        protected void btnImport_Click(object sender, EventArgs e) {
            //1:将excel上传到服务器；
            string fileUrl = this.GetExcel();
            //2:将excel数据导入数据库
            this.InsetData(this.GetExcelDatatable(fileUrl));
        }
        //1：客户端上传excel到服务器
        //@return：fileUrl  服务器文件路径
        protected string GetExcel(){
            string fileUrl = "";
            #region 文件上传
            try
            {
                //全名  
                string excelFile = this.fulImport.PostedFile.FileName;
                //获取文件名（不包括扩展名）  
                string fileName = System.IO.Path.GetFileNameWithoutExtension(fulImport.PostedFile.FileName);
                //扩展名  
                string extentionName = excelFile.Substring(excelFile.LastIndexOf(".") + 1);
                if (fileName == "" || fileName == null)
                {
                    Response.Write("<script>alert('请先选择Excel文件！')</script>");
                    return null;
                }
                if (extentionName != "xls" && extentionName != "xlsx")
                {
                    Response.Write("<script>alert('您上传的不是Excel文件！')</script>");
                    return null;
                }
                //浏览器安全性限制 无法直接获取客户端文件的真实路径，将文件上传到服务器端 然后获取文件源路径  
                #region 设置上传路径将文件保存到服务器
                string dateTime = DateTime.Now.Date.ToString("yyyyMMdd");
                string time = DateTime.Now.ToShortTimeString().Replace(":", "");
                string newFileName = dateTime + time + DateTime.Now.Millisecond.ToString() + ".xls"; ;
                //自己创建的文件夹 位置随意 合理即可  
                fileUrl = Server.MapPath("..\\excel") + "\\" + newFileName;
                this.fulImport.PostedFile.SaveAs(fileUrl);
                //Response.Write("<script>alert('已经上传到服务器文件夹')</script>");
                return fileUrl;
                #endregion
 
            }
            catch (Exception ex)
            {
                Console.WriteLine("添加日志异常" + ex.ToString());
                Response.Write("<script>alert('数据上传失败，请重新导入')</script>" + ex.ToString());
                return null;
            }
            #endregion
 
        }
        //2：Excel数据导入Datable
        //@param fileUrl 服务器文件路径
        //@return System.Data.DataTable dt 
        protected System.Data.DataTable GetExcelDatatable(string fileUrl)
        {
            //office2007之前 仅支持.xls
            //const string cmdText = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source={0};Extended Properties='Excel 8.0;IMEX=1';";
            //支持.xls和.xlsx，即包括office2010等版本的   HDR=Yes代表第一行是标题，不是数据；
           //   string cmdText = "Provider=Microsoft.Jet.OleDb.4.0;Data Source={0};Extended Properties='Excel 8.0; HDR=Yes; IMEX=1'";
            string strCon = "Provider=Microsoft.Jet.Oledb.4.0;Data Source={0};Extended Properties='Excel 8.0;HDR=Yes;IMEX=1;'"; 

 
            System.Data.DataTable dt = null;
            //建立连接
            System.Data.OleDb.OleDbConnection conn = new OleDbConnection(string.Format(strCon, fileUrl));
 
            //打开连接
            if (conn.State == ConnectionState.Broken || conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
 
 
            System.Data.DataTable schemaTable = conn.GetOleDbSchemaTable(System.Data.OleDb.OleDbSchemaGuid.Tables, null);
 
            //获取Excel的第一个Sheet名称
            string sheetName = schemaTable.Rows[0]["TABLE_NAME"].ToString().Trim();
 
            //查询sheet中的数据
            string strSql = "select * from [" + sheetName + "]";
            System.Data.OleDb.OleDbDataAdapter da = new System.Data.OleDb.OleDbDataAdapter(strSql, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dt = ds.Tables[0];
 
            return dt;
 
 
        }
        //3：从System.Data.DataTable导入数据到数据库
        //@param System.Data.DataTable dt
        protected void InsetData(System.Data.DataTable dt)
        {
            int i = 0;
            string xingming = "";
            string xingbie = "";
            string zhicheng = "";
            string xueyuan = "";
            string chusheng = "";
            string dengluzhanghao = "";
            string jianjie = "";
            string Pwd = "";
            foreach (DataRow dr in dt.Rows)
            {
                //此处遍历获取excel的数据
                xingming = dr[0].ToString().Trim();
                xingbie = dr[1].ToString().Trim();
                zhicheng = dr[2].ToString().Trim();
                xueyuan = dr[3].ToString().Trim();
                chusheng = dr[4].ToString().Trim();
                dengluzhanghao = dr[5].ToString().Trim();
                jianjie = dr[6].ToString().Trim();
                Pwd = dr[7].ToString().Trim();
                //此处执行你的数据库插入语句即可
               // string strInsert = "insert into '你的数据库名'.'你的表名' (MATER_ID,MATER_NAME,MATER_COUNT,MATER_SPEC,MATER_COMPANY,MATER_TIME) values(" + MATER_ID + ",'" + MATER_NAME + "'," + MATER_COUNT + ",'" + MATER_SPEC + "','" + MATER_COMPANY + "',to_date('" + MATER_TIME + "','yyyy-mm-dd hh24:mi:ss'))";

                data.RunSql("insert into Teachter(Pwd,Name,Sex,ZhiCheng,XueYuan,chushengriqi,GongHao,Ds)values('" + Pwd + "','" + xingming + "','" + xingbie + "','" + zhicheng + "','" + xueyuan + "','" + chusheng + "','" + dengluzhanghao + "','" + jianjie + "')");

                 
            }
            if (i == dt.Rows.Count)
            {
           //     js.Alertjs();

                Alert.AlertAndRedirect("导入成功！", "TeachterList.aspx");
            }
            else {
                Alert.AlertAndRedirect("导入成功！", "TeachterList.aspx");
            }
           // Search();
        }
        //--------------------------------------------------------------->
}
