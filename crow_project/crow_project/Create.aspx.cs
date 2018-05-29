using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace crow_project {
    public partial class Create : System.Web.UI.Page {



        protected void Page_Load(object sender, EventArgs e) {

            //性別欄が不明にチェックが入っているようにする
            DefaultChecked.Checked = true;

        }

        ///<summary>ボタンのクリック時</summary>
        protected void Submit_Click(object sender, EventArgs e) {
            SqlTransaction trn = TranMng.Transaction;
            using (TranMng mng = new TranMng()) {              
                ///<summary>フォームから入力された生年月日、入社日を格納する</summary>
                //生年月日
                //年
                string Birth_y = birth_y.Text;

                //月
                string Birth_m = birth_m.Text;

                //日
                string Birth_d = birth_d.Text;

                //年月日をまとめる
                string Birth_date = Birth_y + "/" + Birth_m + "/" + Birth_d;              
                //入社日
                //年
                string Emp_y = emp_y.Text;

                //月
                string Emp_m = emp_m.Text;

                //日
                string Emp_d = emp_d.Text;
                //年月日をまとめる
                string Emp_date = Emp_y + "/" + Emp_m + "/" + Emp_d;             

                ///<summary>日付の入力が正しいかチェックする</summary>
                DateTime dt;

                bool TimeInput = true;

                if (DateTime.TryParse(Birth_date, out dt)) {
                } else {
                    //日付の再入力を求める
                    TimeInput = false;
                    DateValidator1.IsValid = false;
                }
                if (DateTime.TryParse(Emp_date, out dt)) {
                } else {
                    //日付の再入力を求める
                    TimeInput = false;
                    DateValidator2.IsValid = false;
                }

                if (TimeInput == true) {

                    ///<summary>
                    /// 日付以外の残りのフォームから得られた値を格納する
                    /// </summary>
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

                    //所属部署
                    string section = Request.Form["section"];

                    //各種入力された値をlistにまとめる values
                    List<string> values = new List<string> { Emp_code, Last_name, First_name, Last_name_kana, First_name_kana, gender, Birth_date, section, Emp_date };

                    ///InsertするためのDictionary型変数のkeyのリスト keys
                    List<string> keys = new List<string>() { "従業員コード", "氏", "名", "氏（フリガナ）", "名（フリガナ）", "性別コード", "生年月日", "所属コード", "入社日" };


                    ///<summary>インサートするテーブルの各キーとそれに対応する値の組み合わせを格納するDictionaryを宣言</summary>
                    /// <summary>key:keysの各要素 value:valuesの各要素</summary>
                    Dictionary<string, string> employeeData = new Dictionary<string, string>();

                    ///<summary>宣言したDictionaryにすべて格納する</summary>
                    for (int i = 0; i < keys.Count; i++) {


                        employeeData.Add(keys[i], values[i]);

                    }

                    ///<summary>登録データベースに登録を試みる</summary>

                    Dao dao = new Dao();
                    if (dao.Insert(employeeData) == true) {
                        ///<summary>成功時Insert_Success.aspxへ送る</summary> 
                        Server.Transfer("Insert_Success.aspx");

                    } else {
                        ///<summary>失敗時Error.htmlへ送る</summary>
                        Server.Transfer("Error2.html");
                    }

                }

                trn.Commit();
            }
        }


    }
}

