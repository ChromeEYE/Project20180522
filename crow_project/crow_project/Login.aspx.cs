using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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

            //trueならセッションを追加しメニュー画面へ遷移・falseならエラー画面1に遷移
            if (flag) {
                Session.Add("USERID", Request.Form["UserID"]);
                Session.Add("PASSWORD", Request.Form["Password"]);
                Server.Transfer("Menu.aspx");
            } else {
                Server.Transfer("Error1.html");
            }
        }
    }
}