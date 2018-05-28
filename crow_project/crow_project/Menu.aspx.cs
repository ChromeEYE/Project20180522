using System;
using UC2;
using UC01;
using crow_project.UC03;

/// <summary>
/// メニュー画面の処理
/// </summary>
namespace UC01{
    public partial class Menu : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }
        //従業員登録メニューボタンが押されたとき従業員登録画面に遷移
        protected void entry_Click(object sender, EventArgs e) {
            Server.Transfer("Create.aspx");
        }

        //従業員一覧表示ボタンが押されたとき従業員一覧画面に遷移
        protected void list_Click(object sender, EventArgs e) {
            Server.Transfer("ShowMemberList.aspx");
        }

        //ログアウトボタンが押されたときログアウト処理をし、ログアウト画面に遷移
        protected void logout_Click(object sender, EventArgs e) {
            Session.Abandon();
            Server.Transfer("Logout.html");
        }
    }
}