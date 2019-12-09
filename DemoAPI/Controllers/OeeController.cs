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
        public IEnumerable<Models.OeeReport.Disponibility> Get()
        {
            List<Models.OeeReport.Disponibility> disponibilityList = Models.OeeReport.Disponibility.GetAllDisponibility();
            return disponibilityList;
        }

        // GET: api/Oee/Disponibility
        [Route("api/Oee/Disponibility")]
        [HttpGet]
        public IEnumerable<Models.OeeReport.Disponibility> GetDisponibility()
        {
            List<Models.OeeReport.Disponibility> disponibilityList = Models.OeeReport.Disponibility.GetAllDisponibility();
            return disponibilityList;
        }

        /// <summary>
        /// Get a list of the last disponibility registers of every operation
        /// </summary>
        /// <returns></returns>
        // GET: api/Oee/CurrentDisponibility
        [Route("api/Oee/CurrentDisponibility")]
        [HttpGet]
        public IEnumerable<Models.OeeReport.Disponibility> GetCurrentDisponibility()
        {
            List<Models.OeeReport.Disponibility> disponibilityList = Models.OeeReport.Disponibility.GetLastRecord();
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
        public IEnumerable<Models.OeeReport.Disponibility> GetDisponibilityDateRange(string from, string to)
        {
            List<Models.OeeReport.Disponibility> disponibilityList = Models.OeeReport.Disponibility.GetRecordsInDateRange(from, to);
            return disponibilityList;
        }

        // GET: api/Oee/Velocity
        [Route("api/Oee/Velocity")]
        [HttpGet]
        public IEnumerable<Models.OeeReport.Velocity> GetVelocity()
        {
            List<Models.OeeReport.Velocity> VelocityList = Models.OeeReport.Velocity.GetAllVelocity();
            return VelocityList;
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
