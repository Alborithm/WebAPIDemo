using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ITMDBConnection;

namespace DemoAPI.Models.OeeReport
{
    public class Velocity
    {
        public int Id { get; set; }
        public int MachineId { get; set; }
        public int ProductionQuantity { get; set; }
        public string ProductionUnit { get; set; }
        public string TimeStamp { get; set; }

        public static List<Velocity> GetAllVelocity()
        {
            List<Velocity> outputList = new List<Velocity>();

            List<ITMDBConnection.Models.Oee> dbModelList = Reporter.OeeReport(Reporter.Reports.VelocityList);

            foreach (var item in dbModelList)
            {
                if (item is ITMDBConnection.Models.Velocity)
                {
                    ITMDBConnection.Models.Velocity tempCast = (ITMDBConnection.Models.Velocity)item;
                    outputList.Add(new Velocity
                    {
                        Id = tempCast.Id,
                        MachineId = tempCast.MachineId,
                        ProductionQuantity = tempCast.ProductionQuantity,
                        ProductionUnit = tempCast.ProductionUnit,
                        TimeStamp = tempCast.TimeStamp
                    });
                }
            }

            return outputList;
        }
    }
}