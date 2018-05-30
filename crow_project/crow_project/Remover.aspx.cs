using System;
using System.Data.SqlClient;

namespace crow_project {
    public partial class Remover : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            using (TranMng trn = new TranMng()) {
                Dao dao = new Dao();
                bool deleteFlg = dao.Delete(Session["delete"].ToString());

                //Delete時の返答行数で可否を問い、表示する文字列を決定する
                if (deleteFlg) {
                    Label1.Text = "Complete!";
                    Label2.Text = "従業員情報が削除されました";
                } else {
                    Label1.Text = "Error!";
                    Label2.Text = "削除できません";
                    Label3.Text = "該当する従業員情報は既に削除されています";
                }

                trn.Commit();
            }
        }
    }
}