using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DemoAPI.Models.OeeReport;

namespace DemoAPI.Controllers
{
    public class OeeController : ApiController
    {
        // GET: api/Oee
        public IEnumerable<Disponibility> Get()
        {
            List<Disponibility> disponibilityList = Disponibility.GetAllDisponibility();
            return disponibilityList;
        }

        // GET: api/Oee/Disponibility
        [Route("api/Oee/Disponibility")]
        [HttpGet]
        public IEnumerable<Disponibility> GetDisponibility()
        {
            List<Disponibility> disponibilityList = Disponibility.GetAllDisponibility();
            return disponibilityList;
        }

        // GET: api/Oee/CurrentDisponibility
        [Route("api/Oee/CurrentDisponibility")]
        [HttpGet]
        public IEnumerable<Disponibility> GetCurrentDisponibility()
        {
            List<Disponibility> disponibilityList = Disponibility.GetLastRecord();
            return disponibilityList;
        }

        // GET: api/Oee/Velocity
        [Route("api/Oee/Velocity")]
        [HttpGet]
        public IEnumerable<Velocity> GetVelocity()
        {
            List<Velocity> VelocityList = Velocity.GetAllVelocity();
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
