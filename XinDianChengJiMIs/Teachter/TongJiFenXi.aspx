<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TongJiFenXi.aspx.cs" Inherits="Teacher_XueQiChengJi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>信电学院成绩信息管理系统</title>
      <LINK href="assets/common.css"type="text/css" rel="stylesheet"> 
      <script src="https://code.highcharts.com.cn/highcharts/highcharts.js"></script>
        <script src="https://code.highcharts.com.cn/highcharts/modules/exporting.js"></script>
        <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
</head>
<body>
    <FORM id=form1   runat=server>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="images/new_019.jpg" border=0></TD>
    <TD width="100%" background=images/new_020.jpg height=20></TD>
    <TD width=15><IMG src="images/new_021.jpg" 
  border=0></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15 background=images/new_022.jpg style="height: 61px"><IMG 
      src="images/new_022.jpg" border=0> </TD>
    <TD vAlign=top width="100%" bgColor=#ffffff style="height: 61px">
      <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
        <TR>
          <TD class=manageHead style="height: 25px">
              当前位置：查询学生成绩</TD></TR>
          <tr>
              <td align="center" height="2">
                  学期：<asp:DropDownList ID="DropDownList1" runat="server" Width="117px">
                            
                  </asp:DropDownList>选择班级：<asp:DropDownList ID="DropDownList3" runat="server" Width="168px">
                  </asp:DropDownList>课程：<asp:DropDownList ID="DropDownList2" runat="server" Width="153px">
                  </asp:DropDownList>
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" /></td>
          </tr>
        <TR>
          <TD height=2 align="left">
                          <asp:GridView ID="gvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                              BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvInfo_PageIndexChanging"
                              OnRowDataBound="gvInfo_RowDataBound" PageSize="12" Width="100%">
                              <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                                  NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                              <RowStyle HorizontalAlign="Left" />
                              <Columns>
                                    <asp:TemplateField HeaderText="课程名称">
                                      <ItemTemplate>
                                          <asp:Label ID="CourseName" runat="server" Text='<%# Bind("CourseName") %>'></asp:Label>
                                      </ItemTemplate>
                                      <ItemStyle HorizontalAlign="Left" Width="100px" />
                                  </asp:TemplateField>
                                  
                                  <asp:TemplateField HeaderText="学期">
                                      <ItemTemplate>
                                          <asp:Label ID="XueQi" runat="server" Text='<%# Bind("XueQi") %>'></asp:Label>
                                      </ItemTemplate>
                                      <ItemStyle HorizontalAlign="Left" Width="100px" />
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="学生姓名">
                                      <ItemTemplate>
                                          <asp:Label ID="StName" runat="server" Text='<%# Bind("StName") %>'></asp:Label>
                                      </ItemTemplate>
                                      <ItemStyle HorizontalAlign="Left" Width="100px" />
                                  </asp:TemplateField>
                             <asp:TemplateField HeaderText="成绩">
                                      <ItemTemplate>
                                          <asp:Label ID="zong" runat="server" Text='<%# Bind("zong") %>'></asp:Label>
                                      </ItemTemplate>
                                      <ItemStyle HorizontalAlign="Left" Width="100px" />
                                  </asp:TemplateField>
                            
                              </Columns>
                              <PagerTemplate>
                                  <table border="0" width="100%">
                                      <tr>
                                          <td>
                                              <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                                  Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                              <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                                  CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                              <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                                  Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                              <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                                  Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                              共
                                              <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                              第
                                              <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                          </td>
                                          <td align="right" width="20%">
                                          </td>
                                      </tr>
                                  </table>
                              </PagerTemplate>
                              <PagerStyle BackColor="#F6F6F6" HorizontalAlign="Left" />
                              <HeaderStyle BackColor="#F6F6F6" />
                          </asp:GridView>
              &nbsp; &nbsp; &nbsp;&nbsp;
          </TD></TR>
          <tr>
              <td align="center" style="height: 2px">
                  本课程本学期的平均分为：<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
          </tr>
      </TABLE>
      </TD>
    <TD width=15 background=images/new_023.jpg style="height: 61px"><IMG 
      src="images/new_023.jpg" border=0> </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="images/new_024.jpg" border=0></TD>
    <TD align=middle width="100%" background=images/new_025.jpg 
    height=15></TD>
    <TD width=15><IMG src="images/new_026.jpg" 
  border=0></TD></TR></TBODY></TABLE>
    <div id="container" style="min-width:400px;height:400px"></div>
</FORM>
<script language="javascript">
    Highcharts.chart('container', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: '成绩比例饼图'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Brands',
            colorByPoint: true,
            data: [{
                name: '优秀率,（90分以上）',
                y: <%=youxiulv %>,
                sliced: true,
                selected: true
            }, {
                name: '合格率(大于60分小于90分)',
                y: <%=jigelv %>
            }, {
                name: '不及格率(小于60分)',
                y: <%=bujigelv %>
            }]
        }]
    });

</script>
</body>
</html>
