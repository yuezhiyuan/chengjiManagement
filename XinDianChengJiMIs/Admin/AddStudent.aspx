<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="Admin_AddStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>信电学院成绩信息管理系统</title>
    <LINK href="assets/common.css"type=text/css rel=stylesheet> 
         <script src="../js/Calendar.js" type="text/javascript"></script>
         	 
     
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
              当前位置：添加学生信息
          </TD></TR>
        <TR>
          <TD height=2 align="center">
              <table align="center" border="0" cellpadding="3" cellspacing="1" class="" style="width: 100%">
                  <tr>
                      <td class="left_title_1" height="30" style="width: 88px">
                          姓名：</td>
                      <td align="left" height="30" style="width: 621px">
                          <asp:TextBox ID="txtname" runat="server" Width="109px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                              ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td class="left_title_1" height="30" style="width: 88px">
                          学号：</td>
                      <td align="left" height="30" style="width: 621px">
                          <asp:TextBox ID="TextBox2" runat="server" Width="249px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                              ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td class="left_title_1" height="30" style="width: 88px">
                          家庭住址：</td>
                      <td align="left" height="30" style="width: 621px">
                          <asp:TextBox ID="TextBox3" runat="server" Width="415px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3"
                              ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr style="color: #000000">
                      <td class="left_title_1" height="30" style="width: 88px">
                          所在宿舍：</td>
                      <td align="left" height="30" style="width: 621px">
                          <asp:TextBox ID="TextBox4" runat="server" Width="116px"></asp:TextBox></td>
                  </tr>
                  <tr style="color: #000000">
                      <td class="left_title_1" height="30" style="width: 88px">
                          加入社团：</td>
                      <td align="left" height="30" style="width: 621px">
                          <asp:TextBox ID="TextBox5" runat="server" Width="298px"></asp:TextBox></td>
                  </tr>
                  <tr style="color: #000000">
                      <td class="left_title_1" height="30" style="width: 88px">
                          性别：</td>
                      <td align="left" height="30" style="width: 621px">
                          <asp:DropDownList ID="DropDownList1" runat="server" Width="89px">
                              <asp:ListItem>男</asp:ListItem>
                              <asp:ListItem>女</asp:ListItem>
                          </asp:DropDownList>
                      </td>
                  </tr>
                  <tr style="color: #000000">
                      <td class="left_title_1" style="width: 88px; height: 30px">
                          学院：</td>
                      <td align="left" style="width: 621px; height: 30px">
                          <asp:DropDownList ID="DropDownList2" runat="server" Width="113px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                          </asp:DropDownList></td>
                  </tr>
                  <tr style="color: #000000">
                      <td class="left_title_1" style="width: 88px; height: 30px">
                          专业：</td>
                      <td align="left" style="width: 621px; height: 30px">
                          <asp:DropDownList ID="DropDownList4" runat="server" Width="113px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                          </asp:DropDownList></td>
                  </tr>
                  <tr style="color: #000000">
                      <td class="left_title_1" style="width: 88px; height: 30px">
                          班级：</td>
                      <td align="left" style="width: 621px; height: 30px">
                          <asp:DropDownList ID="DropDownList3" runat="server" Width="261px">
                          </asp:DropDownList></td>
                  </tr>
                  <tr style="color: #000000">
                      <td class="left_title_1" style="width: 88px; height: 30px">
                          出生年月：</td>
                      <td align="left" style="width: 621px; height: 30px">
                          <input id="txttime1" runat="server" name="txttime1"  onclick="fPopCalendar(event,this,this)" onfocus="this.select()" 
                              style="width: 119px" type="text" value="--请选择日期--" /></td>
                  </tr>
                  <tr style="color: #000000">
                      <td class="left_title_1" style="width: 88px; height: 30px">
                          登陆账号：</td>
                      <td align="left" style="width: 621px; height: 30px">
                          <asp:TextBox ID="txtLoginName" runat="server" Width="166px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLoginName"
                              ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td class="left_title_1" style="width: 88px;">
                          上传照片：</td>
                      <td align="left" style="width: 621px;">
                          <asp:Image ID="Image1" runat="server" Width="126px" Height="93px" /><br />
                          <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                              id="file1" runat="server" class="inputBox" style="width: 141px" type="file" /><asp:Button
                                  ID="Button1" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px"
                                  OnClick="Button1_Click" Text="上传照片"  />&nbsp;
                          <asp:Label ID="Label1" runat="server" Visible="False" Width="60px"></asp:Label>
                          &nbsp; &nbsp; &nbsp;
                      </td>
                  </tr>
                  <tr>
                      <td class="left_title_1" style="width: 88px;">
                          个人描述：</td>
                      <td align="left" style="width: 621px;">
                          <asp:TextBox ID="txtds" runat="server" Height="50px" OnTextChanged="txtds_TextChanged"
                              TextMode="MultiLine" Width="473px"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td class="left_title_1" height="30" style="width: 88px">
                          登录密码：</td>
                      <td align="left" height="30" style="width: 621px">
                          <asp:TextBox ID="TextBox1" onblur="jiance()"  runat="server" TextMode="Password"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                              ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                      <td align="center" class="left_title_1" colspan="2" style="height: 30px">
                          <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="56px">添加</asp:LinkButton>
                          <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label></td>
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
<script language="javascript" >
    function jiance() {
        var mima = document.getElementById("txtpwd2");
        var n = mima.value;
        if (n.length < 6) {
            mima.focus();
            alert("密码最少6位");
        }
    }
</script>
</body>
</html>
