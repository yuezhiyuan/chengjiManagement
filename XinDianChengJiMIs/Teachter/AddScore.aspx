<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddScore.aspx.cs" Inherits="Admin_AddCourseInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title> </title>
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
              当前位置：添加成绩</TD></TR>
        <TR>
          <TD height=2 align="center">
              <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
                  width="100%">
                  <tr>
                      <td align="left" bgcolor="#ffffff" class="STYLE1" colspan="4">
                          <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                              <tr>
                                  <td class="STYLE1" nowrap="nowrap" style="width: 99px; height: 32px">
                                      选择班级：</td>
                                  <td class="STYLE1" colspan="3" style="height: 32px">
                                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                          Width="191px">
                                      </asp:DropDownList></td>
                              </tr>
                              <tr>
                                  <td class="STYLE1" nowrap="nowrap" style="width: 99px; height: 33px">
                                      <div align="left">
                                          选择课程：</div>
                                  </td>
                                  <td class="STYLE1" colspan="3" style="height: 33px">
                                      <div align="left">
                                          <asp:DropDownList ID="DropDownList2" runat="server" Width="191px">
                                          </asp:DropDownList>&nbsp;</div>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="STYLE1" nowrap="nowrap" style="width: 99px; height: 33px">
                                      所在学期：</td>
                                  <td class="STYLE1" colspan="3" style="height: 33px">
                                      <asp:DropDownList ID="DropDownList3" runat="server" Width="191px">
                                      </asp:DropDownList></td>
                              </tr>
                               <tr>
                                  <td class="STYLE1" nowrap="nowrap" style="width: 99px; height: 33px">
                                      成绩分配比率：</td>
                                  <td class="STYLE1" colspan="3" style="height: 33px">
                                      平时成绩：<asp:TextBox ID="ps" runat="server" Width="71px" value="0.3"></asp:TextBox>
                                      上机成绩：<asp:TextBox ID="sj" runat="server" Width="71px" value="0.3"></asp:TextBox>
                                      考试成绩：<asp:TextBox ID="ks" runat="server" Width="71px" value="0.4"></asp:TextBox>
                                      </td>
                              </tr>
                              <tr>
                                  <td align="center" class="STYLE1" colspan="5" style="height: 35px">
                                      班级学生名单</td>
                              </tr>
                              <tr>
                                  <td align="center" class="STYLE1" colspan="5" style="height: 35px">
                                      <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                          ForeColor="#333333" GridLines="None" PageSize="2" Width="100%">
                                          <Columns>
                                              <asp:TemplateField HeaderText="姓名">
                                                  <ItemTemplate>
                                                      <asp:Label ID="Label11" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                                      <asp:Label ID="Labelid" runat="server" Text='<%# Bind("id") %>' Visible="false"></asp:Label>
                                                  </ItemTemplate>
                                                  <ItemStyle HorizontalAlign="Left" Width="80px" />
                                              </asp:TemplateField>
                                               
                                              <asp:TemplateField HeaderText="学院">
                                                  <ItemTemplate>
                                                      <asp:Label ID="XueYuan" runat="server" Text='<%# Bind("XueYuan") %>' Width="112px"></asp:Label>
                                                  </ItemTemplate>
                                                  <ItemStyle HorizontalAlign="Left" Width="80px" />
                                              </asp:TemplateField>
                                              <asp:TemplateField HeaderText="班级">
                                                  <ItemTemplate>
                                                      <asp:Label ID="ClassName" runat="server" Text='<%# Bind("ClassName") %>' Width="112px"></asp:Label>
                                                  </ItemTemplate>
                                                  <ItemStyle HorizontalAlign="Left" Width="80px" />
                                              </asp:TemplateField>
                                              <asp:TemplateField>
                                                  <ItemTemplate>
                                                                   <asp:TextBox ID="Score" runat="server" Width="71px"></asp:TextBox>
                                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Score"
                                                                      ErrorMessage="*"></asp:RequiredFieldValidator>
                                                  </ItemTemplate>
                                                  <HeaderTemplate>
                                                      平时成绩
                                                  </HeaderTemplate>
                                              </asp:TemplateField>
                                              <asp:TemplateField>
                                                  <ItemTemplate>
                                                                   <asp:TextBox ID="shangji" runat="server" Width="71px"></asp:TextBox>
                                                                   
                                                  </ItemTemplate>
                                                  <HeaderTemplate>
                                                      上机成绩
                                                  </HeaderTemplate>
                                              </asp:TemplateField>
                                              <asp:TemplateField>
                                                  <ItemTemplate>
                                                                   <asp:TextBox ID="kaoshi" runat="server" Width="71px"></asp:TextBox>
                                                                  
                                                  </ItemTemplate>
                                                  <HeaderTemplate>
                                                      考试成绩
                                                  </HeaderTemplate>
                                              </asp:TemplateField>
                                              <asp:TemplateField>
                                                  <ItemTemplate>
                                                                 <asp:TextBox ID="zong" runat="server" Width="71px" OnClick="jisuan(this)"></asp:TextBox>
                                                  </ItemTemplate>
                                                  <HeaderTemplate>
                                                      总成绩
                                                  </HeaderTemplate>
                                              </asp:TemplateField>
                                              
                                              
                                          </Columns>
                                          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="12pt" ForeColor="White"
                                              HorizontalAlign="Left" />
                                          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                          <EditRowStyle BackColor="#999999" />
                                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                      </asp:GridView>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="center" class="STYLE1" colspan="4" style="height: 23px">
                                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认添加" /></td>
                              </tr>
                          </table>
                      </td>
                  </tr>
              </table>
          </TD></TR></TABLE>
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
<script language="javascript">
    function jisuan(obj) {
        var ps = document.getElementById("ps").value;
        var sj = document.getElementById("sj").value;
        var ks = document.getElementById("ks").value;
        var k = parseFloat(ps) + parseFloat(sj) + parseFloat(ks);

        k = Math.ceil(k);
        console.log(k)
        if (ps == '' || sj == '' || ks == ''|| k != 1 ) {
            alert('成绩分配比例输入异常');
            return;
        }
        //console.log(obj.parentNode.parentNode.querySelectorAll("input"));
       var tmp =  obj.parentNode.parentNode.querySelectorAll("input");
       var score = tmp[0].value;
        console.log(score)
       var shangji = tmp[1].value;
       var kaoshi = tmp[2].value;
       tmp[3].value = ps * score+sj*shangji+ks*kaoshi;
}
 </script>
</body>
</html>
