using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace crow_project.UC03 {
    public partial class Create : System.Web.UI.Page {

        private List<string> keys = new List<string>() {"従業員コード","氏","名","氏（フリガナ）","名（フリガナ）","性別コード","生年月日","所属コード","入社日"};

        protected void Page_Load(object sender, EventArgs e) {
            ///<summary>不正アクセスをチェックする</summary>

            ///<summary>未ログイン時ログインページに送る</summary>

            ///<summary>ログインしている状態ならページを表示する</summary>

            //一度入力ミスがあった場合エラー文を表示する
            try {
                

            }

                    ///<summary>所属マスタの部署名をselectに追加する(必要かどうか考える余地あり)</summary>  
        }

        ///<summary>ボタンのクリック時</summary>
        protected void Submit_Click(object sender,EventArgs e) {

            ///<summary>フォームから入力された値を格納する</summary>

            //従業員コード
            string Emp_code = emp_cd.Text;

            //氏
            string Last_name = last_nm.Text;

            //名
            string First_name = first_nm.Text;

            //氏(フリガナ)
            string Last_name_kana = last_nm_kana.Text;

            //名(フリガナ)
            string First_name_kana = first_nm_kana.Text;

            //性別
            string gender = Request.Form["gender"];

            //生年月日
            //年
            string Birth_y = birth_y.Text;

            //月
            string Birth_m = birth_m.Text;

            //日
            string Birth_d = birth_d.Text;

            //年月日をまとめる
            string Birth_date = Birth_y + "/"+ Birth_m + "/" + Birth_d;

            //所属部署
            string section = Request.Form["section"];

            //入社日
            //年
            string Emp_y = emp_y.Text;

            //月
            string Emp_m = emp_m.Text;

            //日
            string Emp_d = emp_d.Text;
            //年月日をまとめる
            string Emp_date = Emp_y + "/" + Emp_m + "/" + Emp_d;

            //各種入力された値をlistにまとめる
            List<string> values = new List<string> {Emp_code, Last_name, First_name, Last_name_kana, First_name_kana, gender, Birth_date, section, Emp_date};
            
            ///<summary>日付の入力が正しいかチェックする</summary>
            DateTime dt;
            if ((DateTime.TryParse(Birth_date, out dt)) && (DateTime.TryParse(Emp_date, out dt))) {

                ///<summary>未入力項目がないかチェック</summary>
                if (DataCheck(values) == true) {

                    Dictionary<string, string> EmployeeData = new Dictionary<string, string>();

                    ///<summary>Dictionaryにすべて格納する</summary>
                    for (int i = 0; i < keys.LongCount(); i++) {

                        EmployeeData.Add(keys[i], values[i]);

                    }

                    ///<summary>登録データベースに登録を試みる</summary>
                    using (TransMng mng = new TransMng()) {
                        Dao dao = new Dao();
                        if (dao.Insert(EmployeeData) == true) {
                            ///<summary>成功時Insert_Success.aspxへ送る</summary> 
                            Server.Transfer("Insert_Success.aspx");

                        } else {
                            ///<summary>失敗時Error.htmlへ送る</summary>
                            Server.Transfer("Error.html");
                        }

                    }




                } else {
                    ///<summary>入力しなおし</summary>
                    
                    Server.Transfer("Create.aspx");

                }


            } else {
                ///<summary>入力しなおし</summary>
                errorLabel.Text = "日付の入力に誤りがあります";
                Server.Transfer("Create.aspx");
            }

            ///<summary>日付の入力が誤りの場合入力をやり直す</summary> 

        }

        //未入力項目がないか調べるメソッド
        private Boolean DataCheck(List<string> values) {

            //返り値を定義
            Boolean Result = true;

            //繰り返し処理（valuesの要素数分だけ）
            foreach (string value in values) {

                //要素が空か調べる
                if (string.IsNullOrEmpty(value) == true) {

                    //真の場合返り値をfalseにし、繰り返し処理を終了する。
                    Result = false;
                    errorLabel.Text = "未入力の項目があります";
                    return Result;
                }

                //空でない場合何もしない

            }

            //従業員コード、氏名がテーブル定義通りの長さか調べる
            //if文を分ける
            if (values[0].Length <= 4 && values[1].Length <= 16 && values[2].Length <= 16 && values[3].
                Length <= 24 && values[4].Length <= 24) {



            } else {
                //偽の場合falseにする
                Result = false;

            }

            //値を返す
            return Result;
        }

    }
}
