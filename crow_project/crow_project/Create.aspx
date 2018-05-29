<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="crow_project.Create"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link rel="stylesheet" href="Create.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #DefaultChecked {
            margin-left: 0px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <h1 class="title">従業員登録</h1>
 <div>  
      <p><b>従業員コード</b><span style="padding-left:100px"><asp:TextBox ID="emp_cd" runat="server" Width="61px"></asp:TextBox>
        </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emp_cd" ErrorMessage="RequiredFieldValidator" ForeColor="Red">未入力です</asp:RequiredFieldValidator>
        </p>
      <p>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emp_cd" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[A-Za-z0-9]{0,4}">従業員コードは半角4文字までです</asp:RegularExpressionValidator>
        </p>
    <p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 氏名</b><span style="padding-left:96px"></span>氏<asp:TextBox ID="last_nm" runat="server" Width="135px"></asp:TextBox><span style="padding-left:90px">
        名 <asp:TextBox ID="first_nm" runat="server" style="margin-left: 0px" Width="135px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="last_nm" ErrorMessage="RequiredFieldValidator" ForeColor="Red">未入力です</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="first_nm" ErrorMessage="RequiredFieldValidator" ForeColor="Red">未入力です</asp:RequiredFieldValidator><br />
        <span style="padding-left:103px">氏(フリガナ)<asp:TextBox ID="last_nm_kana" runat="server" Width="135px"></asp:TextBox>
        &nbsp;&nbsp;
        名(フリガナ)<asp:TextBox ID="first_nm_kana" runat="server" Width="135px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="last_nm_kana" ErrorMessage="RequiredFieldValidator" ForeColor="Red">未入力です</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="first_nm_kana" ErrorMessage="RequiredFieldValidator" ForeColor="Red">未入力です</asp:RequiredFieldValidator></span>
        </span>
        </p>
      <p>&nbsp;</p>


    <p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 性別</b><span style="padding-left:80px">不明<input type="radio" name="gender" id="DefaultChecked" value="0" runat="server"/>
        男性<input type="radio" name="gender" value="1" runat="server"/>
        女性<input type="radio" name="gender" value="2" runat="server"/>
        その他<input type="radio" name="gender" value="9" runat="server"/></span>
    </p>
      <p>&nbsp;</p>


    <p><b>&nbsp;&nbsp;&nbsp;&nbsp; 生年月日</b><span style="padding-left:45px">年(西暦)<asp:TextBox ID="birth_y" runat="server" Width="50px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="birth_y">未入力です</asp:RequiredFieldValidator>
        月(例:01,12)<asp:TextBox ID="birth_m" runat="server" Width="50px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="birth_m">未入力です</asp:RequiredFieldValidator>
        日(例:01,30)<asp:TextBox ID="birth_d" runat="server" Width="50px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="birth_d">未入力です</asp:RequiredFieldValidator>
    </span>
   </p>
      <p><span style="padding-left:45px">
        <asp:CustomValidator ID="DateValidator1" runat="server" ErrorMessage="CustomValidator" ForeColor="Red">日付の入力に誤りがあります</asp:CustomValidator>
    </span>
   </p>

    <p><b>&nbsp;&nbsp;&nbsp;&nbsp; 所属部署</b> <span style="padding-left:103px"><select name="section">
        <option value="A1">管理部</option>
        <option value="A2">総務部</option>
        <option value="A3">人事部</option>
        <option value="B1">企画部</option>
        <option value="B2">営業部</option>
        <option value="C1">技術部</option>
        <option value="C2">設計部</option>
        <option value="C3">開発部</option>
        <option value="C4">品質管理部</option>
        </select></span>
    </p>
      <p>&nbsp;</p>
    <p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 入社日</b><span style="padding-left:45px"></span>年(西暦)<asp:TextBox ID="emp_y" runat="server" Width="50px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="emp_y">未入力です</asp:RequiredFieldValidator>
        月(例:01,12)<asp:TextBox ID="emp_m" runat="server" Width="50px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="emp_m">未入力です</asp:RequiredFieldValidator>
        日(例:01,30)<asp:TextBox ID="emp_d" runat="server" Width="50px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="emp_d">未入力です</asp:RequiredFieldValidator>
      

    </p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      

        <asp:CustomValidator ID="DateValidator2" runat="server" ErrorMessage="CustomValidator" ForeColor="Red">日付の入力に誤りがあります</asp:CustomValidator>
      

    &nbsp;</p>

    <a href="Menu.aspx">戻る</a>　<asp:Button ID="CreateButton" CssClass="button" runat="server" Text="登録" OnClick="Submit_Click" Height="42px" Width="80px" />
    
    </div>
    
       
    
         
    </form>
</body>
</html>
