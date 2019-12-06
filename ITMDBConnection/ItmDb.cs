using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace ITMDBConnection
{
    public class ItmDb
    {

        private MySqlConnection connection;
        private string server;
        private string database;
        private string uid;
        private string password;
        

        // Constructor
        public ItmDb()
        {
            Initialize();
        }

        // Initialize values
        private void Initialize()
        {
            server = "192.168.100.91";
            database = "itmoeedb";
            uid = "itm";
            password = "ThemuffinMan531";
            string connectionString;
            connectionString = "SERVER=" + server + ";" + "DATABASE=" +
                database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

            connection = new MySqlConnection(connectionString);
        }

        // Open Connection to database
        private bool OpenConection()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {
                // When handling errors your application response are error numbers
                // The most common error numbers when connecting are as follows:
                // 0 : Cannot connect to server
                // 1045 : Invalid User and/or Password.
                switch (ex.Number)
                {
                    case 0:
                        Console.WriteLine("Cannot connect to server. Contact the administrator");
                        break;
                    case 1045:
                        Console.WriteLine("Invalid User/Password, please try again");
                        break;
                }
                return false;
            }
        }

        // Close connection to database
        private bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }

        // Insert Statement
        //public void Insert(IInsertValues values)
        //{
        //    string tableName;
        //    string columnsString;
        //    string valuesString;

        //    // Get type of insert values and create strings

        //    // string for table name
        //    tableName = values.GetTableName();

        //    // set string for columns
        //    columnsString = values.GetColumnsQueryString();

        //    // set string for values
        //    valuesString = values.GetInsertQueryString();

        //    string query = "INSERT INTO "
        //        + tableName
        //        + "(" + columnsString + ") "
        //        + "VALUES "
        //        + "(" + valuesString + ")";

        //    // Open Connection
        //    if (this.OpenConection() == true)
        //    {
        //        /// First Method

        //        // Create command and assign the query and connection from the constructor
        //        MySqlCommand cmd = new MySqlCommand(query, connection);

        //        // Execute command
        //        cmd.ExecuteNonQuery();

        //        // Close Connection
        //        this.CloseConnection();
        //    }
        //}

        // Update statement
        //public void Update()
        //{
        //    string query = "UPDATE tableinfo SET name='JOE', age=22 WHERE name='Jhon Smith'";

        //    // Open Connection
        //    if (this.OpenConection() == true)
        //    {
        //        /// Second method

        //        // Create command and 
        //        MySqlCommand cmd = new MySqlCommand();

        //        // Assign the query and connection from the constructor
        //        cmd.CommandText = query;
        //        cmd.Connection = connection;

        //        // Execute command
        //        cmd.ExecuteNonQuery();

        //        // Close Connection
        //        this.CloseConnection();
        //    }
        //}

        // Delete statement
        //public void Delete()
        //{
        //    string query = "DELETE FROM tableinfo WHERE name = 'Jhon Smith'";

        //    if (this.OpenConection() == true)
        //    {
        //        MySqlCommand cmd = new MySqlCommand(query, connection);

        //        cmd.ExecuteNonQuery();

        //        this.CloseConnection();
        //    }
        //}

        // Select statement
        public List<List<string>> Select(string query, List<string> columnNames)
        {
            List<List<string>> outputList = new List<List<string>>();

            // initialices the list
            for (int i = 0; i < columnNames.Count; i++)
            {
                outputList.Add(new List<string>());
            }

            // Open Connection
            if (this.OpenConection() == true)
            {
                // Create command
                MySqlCommand cmd = new MySqlCommand(query, connection);
                // Create the data reader and execute the command

                MySqlDataReader dataReader = cmd.ExecuteReader();

                // Read the data and store them in the list
                while (dataReader.Read())
                {
                    for (int i = 0; i < columnNames.Count; i++)
                    {
                        outputList[i].Add(dataReader[columnNames[i]] + "");
                    }
                }

                // Close data reader
                dataReader.Close();

                // Close connection
                this.CloseConnection();

                // return lis to be displayed
                return outputList;
            }
            else
            {
                return outputList;
            }
        }

        // Count Statement
        //public int Count()
        //{
        //    string query = "SELECT Count(*) FROM tableinfo";
        //    int Count = -1;

        //    // Open Connection
        //    if (this.OpenConection() == true)
        //    {
        //        // Create MySQL Command
        //        MySqlCommand cmd = new MySqlCommand(query, connection);

        //        // ExecuteScalar will return one value
        //        Count = int.Parse(cmd.ExecuteScalar() + "");

        //        // Close connection
        //        this.CloseConnection();

        //        return Count;
        //    }
        //    else
        //    {
        //        return Count;
        //    }
        //}

        // Backup
        //public void Backup()
        //{

        //}

        //// Restore
        //public void Restore()
        //{

        //}
    }
}
