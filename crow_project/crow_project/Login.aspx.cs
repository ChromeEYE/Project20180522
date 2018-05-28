using System;

/// <summary>
/// ログイン画面の処理
/// </summary>
namespace UC01 {
    public partial class Login : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        //ログインボタンが押されたとき
        protected void LoginButton_Click(object sender, EventArgs e) {

            bool flag = true;

            if (flag) {
                Server.Transfer("Menu.aspx");
            } else {
                Server.Transfer("Error1.html");
            }
        }
    }
}