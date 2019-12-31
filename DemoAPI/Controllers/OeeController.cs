using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DemoAPI.Models.OeeReport;
using ITMDBConnection.Models;

namespace DemoAPI.Controllers
{
    public class OeeController : ApiController
    {
        // GET: api/Oee
        public int Get()
        {
            
            return 1;
        }

        // GET: api/Oee/Disponibility
        [Route("api/Oee/Disponibility")]
        [HttpGet]
        public IEnumerable<Disponibility> GetDisponibility()
        {
            List<Disponibility> disponibilityList = ReportBuilder.DisponibilityList();
            return disponibilityList;
        }

        /// <summary>
        /// Gets complete list of the equipment given in the parameter
        /// </summary>
        /// <param name="id">Id of the requested operation</param>
        /// <returns></returns>
        // GET: api/Oee/Disponibility/1
        [Route("api/Oee/Disponibility/{id=int}")]
        [HttpGet]
        public IEnumerable<Disponibility> GetDisponibility(int id)
        {
            List<Disponibility> disponibilityList = ReportBuilder.DisponibilityList(id);
            return disponibilityList;
        }

        /// <summary>
        /// Get a model to show data for the main view window, every equipment last data
        /// </summary>
        /// <returns></returns>
        // GET: api/Oee/MainViewData
        [Route("api/Oee/MainViewData")]
        [HttpGet]
        public IEnumerable<AllView> GetMainViewData()
        {
            List<AllView> allViewList = ReportBuilder.GetAllViewData();
            return allViewList;
        }

        /// <summary>
        /// Get a list of all registers on disponibility from data range specified
        /// </summary>
        /// <param name="from"> start date in format YYMMDD</param>
        /// <param name="to"> finish date in format YYMMDD</param>
        /// <returns></returns>
        [Route("api/Oee/CurrentDisponibility/{from=string}/{to=string}")]
        [HttpGet]
        public IEnumerable<Disponibility> GetDisponibilityDateRange(string from, string to)
        {
            //List<Disponibility> disponibilityList = Disponibility.GetRecordsInDateRange(from, to);
            return new List<Disponibility>();
        }

        // GET: api/Oee/Velocity
        [Route("api/Oee/Velocity")]
        [HttpGet]
        public IEnumerable<Velocity> GetVelocity()
        {
            List<Velocity> VelocityList = ReportBuilder.VelocityList();
            return VelocityList;
        }

        // GET: api/Oee/Velocity/2
        [Route("api/Oee/Velocity/{id=int}")]
        [HttpGet]
        public IEnumerable<Velocity> GetVelocity(int id)
        {
            List<Velocity> VelocityList = ReportBuilder.VelocityList(id);
            return VelocityList;
        }

        // GET: api/Oee/Quality
        [Route("api/Oee/Quality")]
        [HttpGet]
        public IEnumerable<Quality> GetQuality()
        {
            List<Quality> QualityList = ReportBuilder.QualityList();
            return QualityList;
        }

        // GET: api/Oee/Quality/2
        [Route("api/Oee/Quality/{id=int}")]
        [HttpGet]
        public IEnumerable<Quality> GetQuality(int id)
        {
            List<Quality> QualityList = ReportBuilder.QualityList(id);
            return QualityList;
        }

        // GET: api/Oee/DisponibilityChartData/4
        [Route("api/Oee/DisponibilityChartData/{id=int}")]
        [HttpGet]
        public IEnumerable<KeyValuePair<string, double>> GetDisponibilityChartData(int id)
        {
            List<KeyValuePair<string, double>> ChartData = ReportBuilder.DisponibilityChartData(id);

            return ChartData;
        }

        // GET: api/Oee/VelocityPerncet/1
        [Route("api/Oee/VelocityPercent/{id=int}")]
        [HttpGet]
        public double GetVelocityPercent(int id)
        {
            double velocityPercent = ReportBuilder.VelocityPercentage(id);

            return velocityPercent;
        }

        // GET: api/Oee/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Oee
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Oee/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Oee/5
        public void Delete(int id)
        {
        }
    }
}
