using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Threading;

namespace crow_project
{
    /// <summary>トランザクションマネージャ</summary>
    /// <author>emBex Education</author>
    /// <version>1.00</version>
    public class TranMng : IDisposable
    {
        /// <summary>
        /// 排他制御
        /// </summary>
        private static ReaderWriterLock @lock = new ReaderWriterLock();

        /// <summary>
        /// コンテキスト
        /// </summary>
        private static Dictionary<int, KeyValuePair<SqlConnection, SqlTransaction>> context;

        /// <summary>
        /// トランザクション
        /// </summary>
        public static SqlTransaction Transaction
        {
            get
            {
                int id = Thread.CurrentThread.ManagedThreadId;
                try
                {
                    @lock.AcquireReaderLock(Timeout.Infinite);
                    return context[id].Value;
                }
                finally
                {
                    @lock.ReleaseReaderLock();
                }
            }
        }

        /// <summary>コネクションマネージャ</summary>
        public TranMng()
        {
            int id = Thread.CurrentThread.ManagedThreadId;
            try
            {
                @lock.AcquireWriterLock(Timeout.Infinite);
                if (context == null)
                    context = new Dictionary<int, KeyValuePair<SqlConnection, SqlTransaction>>();
                if (!context.ContainsKey(id))
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString);
                    con.Open();
                    context.Add(id, new KeyValuePair<SqlConnection, SqlTransaction>(con, con.BeginTransaction()));
                }
            }
            finally
            {
                @lock.ReleaseWriterLock();
            }
        }

        /// <summary>
        /// コミット
        /// </summary>
        public void Commit()
        {
            int id = Thread.CurrentThread.ManagedThreadId;
            try
            {
                @lock.AcquireReaderLock(Timeout.Infinite);
                context[id].Value.Commit();
            }
            finally
            {
                @lock.ReleaseReaderLock();
            }
        }

        /// <summary>
        /// ロールバック
        /// </summary>
        public void Rollback()
        {
            int id = Thread.CurrentThread.ManagedThreadId;
            try
            {
                @lock.AcquireReaderLock(Timeout.Infinite);
                context[id].Value.Rollback();
            }
            finally
            {
                @lock.ReleaseReaderLock();
            }
        }

        /// <summary>リソースの開放</summary>
        public void Dispose()
        {
            int id = Thread.CurrentThread.ManagedThreadId;
            try
            {
                @lock.AcquireWriterLock(Timeout.Infinite);
                try
                {
                    context[id].Value.Dispose();
                    context[id].Key.Close();
                    context[id].Key.Dispose();
                }
                finally
                {
                    context.Remove(id);
                }
            }
            finally
            {
                @lock.ReleaseWriterLock();
            }
        }

    }
}