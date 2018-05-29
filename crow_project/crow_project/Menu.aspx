<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="UC01.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="Menu.css" type="text/css"/> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>メニュー</h1>
        <p>&nbsp;</p>
        <p><asp:Button ID="entry" runat="server" Text="従業員登録メニュー" Height="40px" Width="200px" OnClick="entry_Click" /></p>
        <p>&nbsp;</p>
        <p><asp:Button ID="list" runat="server" Text="従業員一覧表示" Height="40px" Width="200px" OnClick="list_Click" /></p>
        <p>&nbsp;</p>
        <p><asp:Button ID="logout" runat="server" Text="ログアウト" Height="40px" Width="200px" OnClick="logout_Click" /></p>        

    </form>
</body>
</html>
