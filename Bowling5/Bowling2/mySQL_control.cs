using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Diagnostics;

namespace Bowling2
{
    class mySQL_control
    {

        private MySqlConnection connection;
        private string server;
        private string database;
        private string uid;
        private string password;
        //Constructor
        public mySQL_control()
        {
            Initialize();
        }
        //Initialize values
        private void Initialize()
        {
            server = "localhost";
            database = "bowlingdb";
            uid = "root";
            password = "";
            string connectionString;
            connectionString = "SERVER=" + server + ";" + "DATABASE=" +
            database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

            connection = new MySqlConnection(connectionString);
        }



        //Close connection

        public DataTable GetData(string TableQuery)
        {
            DataTable Table = new DataTable();
            MySqlDataAdapter DataAdapter = new MySqlDataAdapter();
            //ça marche tres bien mais je pense que je devrai faire un truc + compliqué
            //reset la table si elle est deja rempli et c
            DataAdapter.SelectCommand = new MySqlCommand(TableQuery, connection);

            DataAdapter.Fill(Table);

            return Table;
        }
        //Insert statement

        public List<string> GetField(string table_string)
        {
            DataTable Table = new DataTable();
            MySqlDataAdapter DataAdapter = new MySqlDataAdapter();
            List<string> listescollonnes = new List<string>();

            //renvoi un tableau de toutes les colonnes d'une table specifié dans table_string
            string query = "SELECT Column_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = \'" + table_string + "\'";
            DataAdapter.SelectCommand = new MySqlCommand(query, connection);
            DataAdapter.Fill(Table);

            //convertie ce tableau en liste
            for (int i = 0; i < Table.Rows.Count; i++)
            {
                listescollonnes.Add(Table.Rows[i][0].ToString());
            }
            
            return listescollonnes;

        }
        public void Insert(string table,string args) 
        {
            string insertquery = String.Format("INSERT INTO {0} VALUES ({1})", table, args);


                 
            
            connection.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = insertquery;
            cmd.ExecuteNonQuery();
            connection.Close();
        }

        //Update statement
        public void Update()
        {
            //MySqlDataAdapter DataAdapter = new MySqlDataAdapter();
            //DataAdapter.Update()
        }

        //Delete statement
        public void Delete(string table,int id)
        {
            connection.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = String.Format("delete from {0} where id='{1}';",table,id);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
    }
}
