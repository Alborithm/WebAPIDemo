using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ITMDBConnection.Models;

namespace ITMDBConnection
{
    public class Reporter
    {
        public enum Reports
        {
            DisponibilityList,
            VelocityList,
            QualityList,
            DisponibilityCurrent
        }

        private string tableName;
        private List<string> columnNames;
        
        private Reporter(Reports report)
        {
            // initialices the values
            Initialize(report);
        }

        private void Initialize(Reports report)
        {
            Oee oeeType;

            switch (report)
            {
                case Reports.DisponibilityList:
                case Reports.DisponibilityCurrent:
                    oeeType = new Disponibility();
                    break;
                case Reports.VelocityList:
                    oeeType = new Velocity();
                    break;
                case Reports.QualityList:
                    throw new NotImplementedException();
                default:
                    throw new NotImplementedException();
            }

            tableName = oeeType.GetTableName;
            columnNames = oeeType.columnNames;
        }

        private static List<Oee> DataToModel(Reports report, List<List<string>> data)
        {
            List<Oee> outputList = new List<Oee>();

            switch (report)
            {
                case Reports.DisponibilityList:
                case Reports.DisponibilityCurrent:
                    for (int i = 0; i < data[0].Count; i++)
                    {
                        outputList.Add(new Disponibility
                        {
                            Id = Int32.Parse(data[0][i]),
                            MachineId = Int32.Parse(data[1][i]),
                            MachinePower = Boolean.Parse(data[2][i]),
                            FailCode = data[3][i],
                            TimeStamp = data[4][i]
                        });
                    }
                    break;
                case Reports.VelocityList:
                    for (int i = 0; i < data[0].Count; i++)
                    {
                        outputList.Add(new Velocity
                        {
                            Id = Int32.Parse(data[0][i]),
                            MachineId = Int32.Parse(data[1][i]),
                            ProductionQuantity = Int32.Parse(data[2][i]),
                            ProductionUnit = data[3][i],
                            TimeStamp = data[4][i]
                        });
                    }
                    break;
                case Reports.QualityList:
                    break;
                default:
                    break;
            }

            return outputList;
        }

        // Generates report calling functions of other classes
        public static List<Oee> OeeReport(Reports report)
        {
            Reporter reporter = new Reporter(report);
            string queryString = "";
            List<Oee> outputList;
            List<List<string>> stringDataList;

            ItmDb dbConnection = new ItmDb();

            switch (report)
            {
                case Reports.DisponibilityList:
                case Reports.VelocityList:
                    queryString = Query.SelectQuery(reporter.tableName, reporter.columnNames);
                    break;
                case Reports.QualityList:
                    throw new NotImplementedException();
                case Reports.DisponibilityCurrent:
                    queryString = Query.SelectLastRowQuery(reporter.tableName, reporter.columnNames);
                    break;
                default:
                    break;
            }

            stringDataList = dbConnection.Select(queryString, reporter.columnNames);

            outputList = DataToModel(report, stringDataList);

            return outputList;
        }


    }
}
