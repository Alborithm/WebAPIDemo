using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ITMDBConnection.Models;

namespace ITMDBConnection
{
    internal static class Query
    {
        internal static string QueryString;

        internal static string SelectQuery(string table, List<string> columns)
        {
            string outputString = "";

            outputString += "SELECT ";

            foreach (string column in columns)
            {
                outputString += column + ",";
            }

            // Deletes the last comma
            outputString = outputString.Remove(outputString.Length -1, 1);

            outputString += " FROM ";

            outputString += table;

            outputString += ";";

            return outputString;
        }

        internal static string SelectLastRowQuery(string table, List<string> columns)
        {
            string outputString = "";

            outputString += "SELECT ";

            foreach (string column in columns)
            {
                outputString += column + ",";
            }

            // Deletes the last comma
            outputString = outputString.Remove(outputString.Length - 1, 1);

            outputString += " FROM ";

            outputString += table;

            outputString += " ORDER BY ";

            outputString += columns[0];

            outputString += " DESC LIMIT 1";

            outputString += ";";

            return outputString;
        }
    }
}
