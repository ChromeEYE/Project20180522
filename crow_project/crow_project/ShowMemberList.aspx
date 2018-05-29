<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowMemberList.aspx.cs" Inherits="UC2.ShowMemberList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div align="center">
    <form id="form1" runat="server">
        <h1>従業員一覧</h1>
        <asp:Table ID="Table1" runat="server" GridLines="Both">
            <asp:TableRow runat="server">
                <asp:TableHeaderCell runat="server">&emsp;従業員コード&emsp;</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">&emsp;&ensp;氏名&ensp;&emsp;</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">&emsp;氏名(フリガナ)&emsp;</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">&emsp;性別&emsp;</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">&emsp;生年月日&emsp;</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">&emsp;所属部署&emsp;</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server">&emsp;入社日&emsp;</asp:TableHeaderCell>
                <asp:TableCell runat="server">&emsp;&emsp;&emsp;</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <p style="padding-left:660px">
            <asp:HyperLink ID="BackMenu" runat="server" NavigateUrl="Menu.aspx">メニュー画面へ</asp:HyperLink>
        </p>
    </form>
    </div>
</body>
</html>
