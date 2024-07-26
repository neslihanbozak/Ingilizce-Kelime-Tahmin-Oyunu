using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace IngilizceKelimeOyunu
{
    public static class DatabaseConnection
    {
        private static SqlConnection _connection;

        public static SqlConnection GetConnection()
        {
            if (_connection == null)
            {
                var connectionString = ConfigurationManager.ConnectionStrings["MyDbConnection"].ConnectionString;
                _connection = new SqlConnection(connectionString);
            }

            if (_connection.State == System.Data.ConnectionState.Closed)
            {
                _connection.Open();
            }

            return _connection;
        }

        public static void CloseConnection()
        {
            if (_connection != null && _connection.State == ConnectionState.Open)
            {
                _connection.Close();
            }
        }
    }
}
