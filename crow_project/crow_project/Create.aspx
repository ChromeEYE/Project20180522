<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="crow_project.UC03.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link rel="stylesheet" href="Create.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
    <h1 class="title">従業員登録</h1>
    <p class="sp1">従業員コード<asp:TextBox ID="emp_cd" runat="server" Width="61px"></asp:TextBox><asp:Label ID="errorLabel" runat="server" Text=""></asp:Label>
        </p>
    <p>氏名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 氏<asp:TextBox ID="last_nm" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        名 <asp:TextBox ID="first_nm" runat="server"></asp:TextBox><br />
        　　　氏(フリガナ)<asp:TextBox ID="last_nm_kana" runat="server"></asp:TextBox>
        名(フリガナ)<asp:TextBox ID="first_nm_kana" runat="server"></asp:TextBox>
        </p>
    <p>性別 
            
        不明<input type="radio" name="gender" id="DefaultChecked" value="0" runat="server"/>
        男性<input type="radio" name="gender" value="1" runat="server"/>
        女性<input type="radio" name="gender" value="2" runat="server"/>
        その他<input type="radio" name="gender" value="9" runat="server"/>
    </p>
    <p>生年月日 <span class="sp2">年(西暦)<asp:TextBox ID="birth_y" runat="server" Width="50px"></asp:TextBox>
        月(例:01,12)<asp:TextBox ID="birth_m" runat="server" Width="50px"></asp:TextBox>
        日(例:01,30)<asp:TextBox ID="birth_d" runat="server" Width="50px"></asp:TextBox></span>
   </p>

    <p class="sp2">所属部署<select name="section">
        <option value="A1">管理部</option>
        <option value="A2">総務部</option>
        <option value="A3">人事部</option>
        <option value="B1">企画部</option>
        <option value="B2">営業部</option>
        <option value="C1">技術部</option>
        <option value="C2">設計部</option>
        <option value="C3">開発部</option>
        <option value="C4">品質管理部</option>
        </select>
    </p>
    <p>入社日<span class="sp3">年(西暦)<asp:TextBox ID="emp_y" runat="server" Width="50px"></asp:TextBox>
        月(例:01,12)<asp:TextBox ID="emp_m" runat="server" Width="50px"></asp:TextBox>
        日(例:01,30)<asp:TextBox ID="emp_d" runat="server" Width="50px"></asp:TextBox></span>


    </p>
        <asp:Button ID="CreateButton" CssClass="button" runat="server" Text="登録" OnClick="Submit_Click" />
    </form>
</body>
</html>
