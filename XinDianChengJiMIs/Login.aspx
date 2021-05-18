<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>信电学院成绩信息管理系统</title>
     <style>
input[type=text], select {
  
  padding: 5px 10px;
margin: 1px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
 
  background-color: #4CAF50;
  color: white;
  padding: 5px 10px;
margin: 1px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=Password] {
 
  padding: 5px 10px;
margin: 1px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit]:hover {
  background-color: #45a049;
}


textarea {
 
  padding: 5px 10px;
margin: 1px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}</style>
<LINK rel="stylesheet" type="text/css" href="images/reset.css"><LINK rel="stylesheet" 
type="text/css" href="images/style.css"><LINK rel="stylesheet" type="text/css" 
href="images/lrtk.css">
 
</head>
<body>
    <form id="form1" runat="server">
  <SECTION id="h1" class="jawbone-takeover-minimulti jawbone-hero"><I 
style="opacity: 1.05;" class="jawbone-hero-image" data-hero-min-opacity=".3" 
data-hero-image-fade="true" data-hero-image-fixed="true"></I>
<DIV class="warp"><A href="#">
<DIV class="logo"></DIV></A>
<DIV class="loginbox">
<DIV class="cd-user-modal-container">
<UL class="cd-switcher">
  <LI> 信电学院成绩信息管理系统</LI>
   </UL>
<DIV id="cd-login">
 
<DIV class="list"><input id="UserName" runat="server" class="listinp" name="username" placeholder="登录账号"
            type="text" /></DIV>
<DIV class="list"><input id="PassWord" runat="server" class="listinp" name="password"
                placeholder="密码" type="password" /></DIV>

<DIV class="list">
<asp:DropDownList ID="DropDownList1" runat="server"  class="listinp">
                                   <asp:ListItem Selected="True">管理员</asp:ListItem>
                <asp:ListItem>教师</asp:ListItem>
                <asp:ListItem>学生</asp:ListItem>
 
                            </asp:DropDownList>

 </DIV>
 
<DIV class="login"><input id="Submit1" runat="server" class="btn" onserverclick="Submit1_ServerClick1"
                                type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;录" /></DIV>
 </DIV> 
 
 </DIV></DIV>
  </DIV></SECTION>
 
         
    </form>
</body>
</html>
