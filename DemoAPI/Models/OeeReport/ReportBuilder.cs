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

        public static OeeFull GetFullOeeForEquipment(int id)
        {
            OeeFull output = new OeeFull();

            List<Oee> dispList = Reporter.OeeReport(Reporter.Reports.DisponibilityList);
            List<Oee> velList = Reporter.OeeReport(Reporter.Reports.VelocityList);
            List<Oee> qualList = Reporter.OeeReport(Reporter.Reports.QualityList);

            foreach (var item in dispList)
            {
                output.DisponibilityList.Add((Disponibility)item);
            }
            foreach (var item in velList)
            {
                output.VelocityList.Add((Velocity)item);
            }
            foreach (var item in qualList)
            {
                output.QualityList.Add((Quality)item);
            }


            return output;
        }

        public static List<Disponibility> DisponibilityList()
        {
            List<Disponibility> outputList = new List<Disponibility>();
            List<Oee> oeeList =  Reporter.OeeReport(Reporter.Reports.DisponibilityList);

            foreach(var item in oeeList)
            {
                outputList.Add((Disponibility)item);
            }

            return outputList;
        }

        public static List<Disponibility> DisponibilityList(int id)
        {
            List<Disponibility> outputList = new List<Disponibility>();
            List<Oee> oeeList = Reporter.OeeReport(Reporter.Reports.DisponibilityList, id);

            foreach (var item in oeeList)
            {
                outputList.Add((Disponibility)item);
            }

            return outputList;
        }

        public static List<Velocity> VelocityList()
        {
            List<Velocity> outputList = new List<Velocity>();
            List<Oee> oeeList = Reporter.OeeReport(Reporter.Reports.VelocityList);

            foreach (var item in oeeList)
            {
                outputList.Add((Velocity)item);
            }

            return outputList;
        }

        public static List<Velocity> VelocityList(int id)
        {
            List<Velocity> outputList = new List<Velocity>();
            List<Oee> oeeList = Reporter.OeeReport(Reporter.Reports.VelocityList, id);

            foreach (var item in oeeList)
            {
                outputList.Add((Velocity)item);
            }

            return outputList;
        }

        public static List<Quality> QualityList()
        {
            List<Quality> outputList = new List<Quality>();
            List<Oee> oeeList = Reporter.OeeReport(Reporter.Reports.QualityList);

            foreach (var item in oeeList)
            {
                outputList.Add((Quality)item);
            }

            return outputList;
        }

        public static List<Quality> QualityList(int id)
        {
            List<Quality> outputList = new List<Quality>();
            List<Oee> oeeList = Reporter.OeeReport(Reporter.Reports.QualityList, id);

            foreach (var item in oeeList)
            {
                outputList.Add((Quality)item);
            }

            return outputList;
        }

        public static List<KeyValuePair<string,double>> DisponibilityChartData(int id)
        {
            List<KeyValuePair<string, double>> output = new List<KeyValuePair<string, double>>();

            double uptime = DisponibilityPercent(DisponibilityList(id));

            output.Add(new KeyValuePair<string, double>("UPTIME", uptime));
            output.Add(new KeyValuePair<string, double>("DOWNTIME", (100.00 - uptime)));

            return output;
        }

        private static double DisponibilityPercent(List<Disponibility> disponibilityList)
        {
            long uptimeMilis = 0;
            long totalMilis = 0;

            string dateString = FormatString(disponibilityList[0].TimeStamp);

            DateTime previous = DateTime.ParseExact(dateString, "dd/MM/yyyy hh:mm:ss tt", System.Globalization.CultureInfo.InvariantCulture);

            dateString = FormatString(disponibilityList[disponibilityList.Count - 1].TimeStamp);

            long lastIndexMilis = DateTime.ParseExact(dateString, "dd/MM/yyyy hh:mm:ss tt", System.Globalization.CultureInfo.InvariantCulture).ToBinary();
            totalMilis = lastIndexMilis - previous.ToBinary();

            int i = -1;
            foreach (var item in disponibilityList)
            {
                long deltaMiliseconds = 0;
                dateString = FormatString(item.TimeStamp);
                deltaMiliseconds =
                    DateTime.ParseExact(dateString, "dd/MM/yyyy hh:mm:ss tt", System.Globalization.CultureInfo.InvariantCulture).ToBinary() -
                    previous.ToBinary();

                if (i != -1)
                {
                    if (disponibilityList[i].MachinePower == true)
                    {
                        uptimeMilis += deltaMiliseconds;
                    }
                }
                previous = DateTime.ParseExact(dateString, "dd/MM/yyyy hh:mm:ss tt", System.Globalization.CultureInfo.InvariantCulture);
                i++;
            }

            return ((double)uptimeMilis / (double)totalMilis) * 100;
        }

        // INCOMPLETE, look for the best format to display this
        //public static List<KeyValuePair<DateTime, double>> VelocityChartData(int id, TimeSpan gap)
        //{
        //    List<KeyValuePair<DateTime, double>> output = new List<KeyValuePair<DateTime, double>>();

        //    output.Add(new KeyValuePair<DateTime, double>(DateTime.Now,85.00));

        //    List<Velocity> _velocityList = VelocityList(id);

        //    // initialization
        //    string dateString = FormatString(_velocityList[0].TimeStamp);

        //    DateTime DateColumn = DateTime.ParseExact(dateString, "dd/MM/yyyy hh:mm:ss tt", System.Globalization.CultureInfo.InvariantCulture);

        //    DateTime currentIteration = new DateTime();

        //    foreach (var item in _velocityList)
        //    {
        //        dateString = FormatString(item.TimeStamp);
        //        currentIteration = DateTime.ParseExact(dateString, "dd/MM/yyyy hh:mm:ss tt", System.Globalization.CultureInfo.InvariantCulture);

        //        if ( currentIteration < DateColumn.Add(gap))
        //        {

        //        }
        //        else
        //        {

        //        }
        //    }

        //    return output;
        //}

        /// <summary>
        /// Gets the velocity percentage, it is done by obtaining the real production from mysql, divide this by the max production
        /// which is obtained by giving a known rate on a period of time, this is multiplied by the disponibility percentage in order to
        /// get effective velocity at running time.
        /// </summary>
        /// <param name="id">Operation Id to obtain data</param>
        /// <returns>double value in percentage format, shouldn't be higher than 100</returns>
        public static double VelocityPercentage(int id)
        {
            List<Disponibility> _disponibiliyList = DisponibilityList(id);

            double disponibilityPercent = DisponibilityPercent(_disponibiliyList);
            string dateString = FormatString(_disponibiliyList[0].TimeStamp);

            long firstIindexVal = DateTime.ParseExact(dateString, "dd/MM/yyyy hh:mm:ss tt", System.Globalization.CultureInfo.InvariantCulture).ToBinary();

            dateString = FormatString(_disponibiliyList[_disponibiliyList.Count - 1].TimeStamp);

            long lastIndexVal = DateTime.ParseExact(dateString, "dd/MM/yyyy hh:mm:ss tt", System.Globalization.CultureInfo.InvariantCulture).ToBinary();
            long totalTime = lastIndexVal - firstIindexVal;

            // Get the max velocity
            DateTime rateTime = new DateTime();
            rateTime = rateTime.AddSeconds(5);
            long rateTimeLong = rateTime.ToBinary();

            long maxProduction = (totalTime / rateTimeLong) * 10;


            List<Velocity> _velocityList = VelocityList(id);

            int realProduction = _velocityList[_velocityList.Count - 1].ProductionQuantity;

            double velocityPercentage = (double)realProduction / (disponibilityPercent / 100 * (double)maxProduction) * 100;

            return velocityPercentage;
        }

        private static string FormatString(string dateMySQLFormat)
        {
            if (dateMySQLFormat.Contains("p"))
            {
                dateMySQLFormat = dateMySQLFormat.Remove(dateMySQLFormat.IndexOf("p"), "p. m.".Count());
                dateMySQLFormat += "PM";
            }
            else
            {
                dateMySQLFormat = dateMySQLFormat.Remove(dateMySQLFormat.IndexOf("a"), "a. m.".Count());
                dateMySQLFormat += "AM";
            }

            return dateMySQLFormat;
        }
    }
}