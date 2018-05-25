<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UC01.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>ログイン</h1>
        <p>&nbsp;</p>
        <input type ="text" name="UserID"/>
        <input type ="text" name="Password"/>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </p>

    </form>
</body>
</html>
