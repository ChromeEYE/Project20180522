using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using crow_project;

namespace UC2 {
    public partial class ShowMemberList : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            using (TransMng trn = new TransMng()) {

                Dao dao = new Dao();
                List<string> member;

                member = dao.Show();

                for (int i = 0; i < member.Count / 7; i++) {
                    TableRow row = new TableRow();
                    Table1.Rows.Add(row);
                    row.Cells.AddRange(new TableCell[] { new TableCell(), new TableCell(), new TableCell(), new TableCell(), new TableCell(), new TableCell(), new TableCell(), new TableCell() });
                    for (int j = 0; j <= 7; j++) {
                        if (j == 7) {
                            Button deleteButton = new Button();
                            deleteButton.Text = "削除";
                            deleteButton.ID = member[i * 7];
                            deleteButton.Click += new EventHandler(Remover_ButtonClick);
                            row.Cells[j].Controls.Add(deleteButton);
                            break;
                        }
                        row.Cells[j].Text = member[j + (i * 7)];
                        row.Cells[j].BorderStyle = BorderStyle.Solid;

                    }
                }
            }
        }

        protected void Remover_ButtonClick(object sender, EventArgs e) {
            string code = ((Button)sender).ID;
            Session.Add("delete", code);
            Response.Redirect("Remover.aspx");
        }
    }
}