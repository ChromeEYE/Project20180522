<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UC01.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Login.css" type="text/css"/> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>ログイン</h1>
        
        <p>&nbsp;</p>

         <p id="text1">  ユーザID <span id="user"><asp:TextBox ID="UserID" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ユーザIDが未入力です" ControlToValidate="UserID" BorderColor="Red" ForeColor="Red"></asp:RequiredFieldValidator>
             </span>
             </p>
        <p id="text2"> 
           パスワード <span id="password"><asp:TextBox ID="Password" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="パスワードが未入力です" ControlToValidate="Password" BorderColor="Red" ForeColor="Red"></asp:RequiredFieldValidator>
             </span>
             </p>
        <div id="button">
            <br/>
         <span><asp:Button ID="LoginButton" runat="server" Text="ログイン" OnClick="LoginButton_Click" /></span>
            </div>
    </form>
</body>
</html>
