using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ITMDBConnection.Models;
using ITMDBConnection;

namespace DemoAPI.Models.OeeReport
{
    public class ReportBuilder
    {
        public static List<AllView> GetAllViewData()
        {
            List<AllView> outputList = new List<AllView>();

            List<Oee> oeeList = Reporter.OeeReport(Reporter.Reports.AllView);

            foreach (var item in oeeList)
            {
                outputList.Add((AllView)item);
            }

            return outputList;
        }
    }
}