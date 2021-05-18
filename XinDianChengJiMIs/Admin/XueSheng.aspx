<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XueSheng.aspx.cs" Inherits="Admin_XueSheng" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>信电学院成绩信息管理系统</title>
    <LINK href="assets/common.css"type=text/css rel=stylesheet> 
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
          <TD class=manageHead>
              当前位置：学生信息管理
          </TD></TR>
        <TR>
          <TD height=2 align="left">
                          <asp:GridView ID="gvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                              BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvInfo_PageIndexChanging"
                              OnRowDataBound="gvInfo_RowDataBound" PageSize="12" Width="100%">
                              <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                                  NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                              <RowStyle HorizontalAlign="Left" />
                              <Columns>
                <asp:TemplateField HeaderText="姓名">
                    <ItemTemplate>
                        <asp:Label ID="Name" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="80px" />
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="学号">
                    <ItemTemplate>
                        <asp:Label ID="XueHao" runat="server" Text='<%# Bind("XueHao") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="80px" />
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="学院">
                    <ItemTemplate>
                        <asp:Label ID="XueYuan" runat="server" Text='<%# Bind("XueYuan") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="80px" />
                </asp:TemplateField>
                
                
                <asp:TemplateField HeaderText="专业">
                    <ItemTemplate>
                        <asp:Label ID="ZhuanYeName" runat="server" Text='<%# Bind("ZhuanYeName") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="80px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="性别">
                    <ItemTemplate>
                        <asp:Label ID="Sex" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="80px" />
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="班级">
                    <ItemTemplate>
                        <asp:Label ID="ClassName" runat="server" Text='<%# Bind("ClassName") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="80px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="登陆账号">
                    <ItemTemplate>
                        <asp:Label ID="GongHao" runat="server" Text='<%# Bind("GongHao") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="80px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="年龄">
                    <ItemTemplate>
                        <asp:Label ID="chushengriqi" runat="server" Text='<%# Bind("chushengriqi") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="80px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="添加日期"  >
                    <ItemTemplate>
                        <asp:Label ID="Addtime" runat="server" Text='<%# Bind("Addtime","{0:d}") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
             <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="查看/修改">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ModifyStudent.aspx?id="+Eval("id") %>'
                            Text="查看/修改" Width="89px"></asp:HyperLink>
                    </ItemTemplate>
             <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                     <asp:TemplateField HeaderText="选择">
                                      <EditItemTemplate>
                                          <asp:CheckBox ID="CheckBox1" runat="server" />
                                      </EditItemTemplate>
                                      <HeaderTemplate>
                                          选择
                                      </HeaderTemplate>
                                      <ItemTemplate>
                                          <asp:CheckBox ID="chkSelect" runat="server" />
                                      </ItemTemplate>
                                      <ItemStyle HorizontalAlign="Center" Width="40px" />
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
              <td align="center" height="2">
                  <asp:Button ID="btnSelectAll" runat="server" OnClick="btnSelectAll_Click" Text="全选" /><asp:Button ID="btnDel" runat="server" OnClick="btnDel_Click" OnClientClick="javascript:return confirm('确定删除么？');"
                              Text="删除" /></td>
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
</FORM>
</body>
</html>
