using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Collections.Generic;
using crow_project;


namespace UC2 {
    public class Dao {
        /// <summary>コネクション</summary>
        private readonly SqlConnection con;
        /// <summary>トランザクション</summary>
        private readonly SqlTransaction trn;
        /// <summary>DAO（従業員テーブル）</summary>
        public Dao() {
            con = TransMng.Transaction.Connection;
            trn = TransMng.Transaction;
        }

        public  List<string> Show() {

            List<string> member = new List<string>() { "1","2","3","4","5","6","7","8","9","10","11","12","13","14"};

            using (SqlCommand cmd = new SqlCommand("SELECT *FROM m_employee", con, trn)) {
            //    using (SqlDataReader reader = cmd.ExecuteReader()) {
            //        while (reader.Read()) {
            //            member.Add(reader["emp_cd"].ToString());
            //            member.Add(reader["emp_cd"].ToString());
            //            member.Add(reader["emp_cd"].ToString());
            //            member.Add(reader["emp_cd"].ToString());
            //            member.Add(reader["emp_cd"].ToString());
            //            member.Add(reader["emp_cd"].ToString());
            //        }
            //    }
                return member;
            }
        }
        public bool Remover(string code) { return true; }
    }
}