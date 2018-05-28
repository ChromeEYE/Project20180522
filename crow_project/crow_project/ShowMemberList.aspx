<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowMemberList.aspx.cs" Inherits="UC2.ShowMemberList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="ShowMemberList.css">
</head>
<body>
    <div align="center">
    <form id="form1" runat="server">
        <h1>従業員一覧</h1>
        <asp:Table ID="Table1" runat="server" GridLines="Both">
            <asp:TableRow runat="server">
                <asp:TableHeaderCell runat="server">従業員コード</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">氏名</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">氏名(フリガナ)</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">性別</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">生年月日</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">所属部署</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">入社日</asp:TableHeaderCell>
                <asp:TableCell runat="server">&emsp;&emsp;&emsp;</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <p><asp:HyperLink ID="BackMenu" runat="server" NavigateUrl="aaa.aspxs">メニュー画面へ</asp:HyperLink></p>
    </form>
    </div>
</body>
</html>
