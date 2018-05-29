using crow_project;
using System;
using System.Collections.Generic;
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
            string userId = UserID.Text;
            string password = Password.Text;
      
            using (TranMng trn = new TranMng()) {

                Dao dao = new Dao();

                flag = dao.Login(userId, password);


            }
                // flagがtrueならメニュー画面へ遷移・falseならエラー画面1に遷移
                if (flag) {
                    Server.Transfer("Menu.aspx");
                } else {
                    Server.Transfer("Error1.html");
                }
        }
    }
}