using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace crow_project
{
    public partial class Remover : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dao dao = new Dao();
            bool flg = dao.Delete(Session["delete"].ToString());

            if (flg) 
            {
                Label1.Text = "Complete!";
                Label2.Text = "従業員情報が削除されました";
            }
            else
            {
                Label1.Text = "Error!";
                Label2.Text = "削除できません";
                Label3.Text = "該当する従業員情報は既に削除されています";
            }
        }
    }
}