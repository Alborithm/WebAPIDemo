using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ITMDBConnection;

namespace DemoAPI.Models.OeeReport
{
    public class Disponibility
    {
        public int Id { get; set; }
        public int MachineId { get; set; }
        public bool MachinePower { get; set; }
        public string FailCode { get; set; }
        public string TimeStamp { get; set; }

        public static List<Disponibility> GetAllDisponibility()
        {
            List<Disponibility> outputList = new List<Disponibility>();

            List<ITMDBConnection.Models.Oee> dbModelList = Reporter.OeeReport(Reporter.Reports.DisponibilityList);

            foreach (var item in dbModelList)
            {
                if (item is ITMDBConnection.Models.Disponibility)
                {
                    ITMDBConnection.Models.Disponibility tempCast = (ITMDBConnection.Models.Disponibility)item;
                    outputList.Add(new Disponibility
                    {
                        Id = tempCast.Id,
                        MachineId = tempCast.MachineId,
                        MachinePower = tempCast.MachinePower,
                        FailCode = tempCast.FailCode,
                        TimeStamp = tempCast.TimeStamp
                    });
                }
            }

            return outputList;
        }

        public static List<Disponibility> GetLastRecord()
        {
            List<Disponibility> outputList = new List<Disponibility>();

            List<ITMDBConnection.Models.Oee> dbModelList = Reporter.OeeReport(Reporter.Reports.DisponibilityCurrent);

            foreach (var item in dbModelList)
            {
                if (item is ITMDBConnection.Models.Disponibility)
                {
                    ITMDBConnection.Models.Disponibility tempCast = (ITMDBConnection.Models.Disponibility)item;
                    outputList.Add(new Disponibility
                    {
                        Id = tempCast.Id,
                        MachineId = tempCast.MachineId,
                        MachinePower = tempCast.MachinePower,
                        FailCode = tempCast.FailCode,
                        TimeStamp = tempCast.TimeStamp
                    });
                }
            }

            return outputList;
        }
    }
}