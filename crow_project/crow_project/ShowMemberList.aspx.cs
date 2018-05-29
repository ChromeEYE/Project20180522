using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using crow_project;

namespace UC2 {
    ///
    public partial class ShowMemberList : System.Web.UI.Page {
        /// <summary>
        /// ページを読み込むときのメソッド
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e) {
            //テーブルの列数
            const int TABLENUM = 7;
            //データベースの列数
            const int MAXNUM = 9;
            //参照したいListの数
            int listNum;

            using (TranMng trn = new TranMng()) {

                //DAOのインスタンス
                Dao dao = new Dao();
                List<string> member;

                //登録情報の取得
                member = dao.Show();

                //テーブルに値を代入
                //i = 行数
                for (int i = 0; i < member.Count / MAXNUM; i++) {
                    //参照したいListの初期化
                    listNum = 0;
                    //テーブルの作成
                    TableRow row = new TableRow();
                    Table1.Rows.Add(row);
                    row.Cells.AddRange(new TableCell[] { new TableCell(), new TableCell(), new TableCell(), new TableCell(), new TableCell(), new TableCell(), new TableCell(), new TableCell() });
                    for (int j = 0; j <= TABLENUM; j++) {
                        row.Cells[j].HorizontalAlign = HorizontalAlign.Center;
                        switch (j) {
                            //テーブル１番目には氏List(1) ＋ 名List(2)
                            //テーブル２番目には氏フリガナList(3) ＋ 名フリガナList(4)
                            case 1:
                            case 2:
                                row.Cells[j].Text = member[listNum + (i * MAXNUM)] + member[listNum + (i * MAXNUM) + 1];
                                listNum += 2;
                                break;

                            //テーブルの最後に"削除"ボタンの作成
                            case TABLENUM:
                                Button deleteButton = new Button();
                                deleteButton.Text = " "+"削除";
                                //行のコード情報（削除したい従業員コード）
                                deleteButton.ID = member[i * MAXNUM];
                                deleteButton.Click += new EventHandler(Remover_ButtonClick);
                                row.Cells[j].Controls.Add(deleteButton);
                                break;

                            //Listの情報をテーブルに挿入
                            default:
                                row.Cells[j].Text =  member[listNum + (i * MAXNUM)];
                                listNum++;
                                break;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// 削除ボタンを押したときのイベント
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Remover_ButtonClick(object sender, EventArgs e) {
            string code = ((Button)sender).ID;
            Session.Add("delete", code);
            Server.Transfer("Remover.aspx");
        }
    }
}