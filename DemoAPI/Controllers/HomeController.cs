using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DemoAPI.Models.OeeReport;

namespace DemoAPI.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View();
        }

        public ActionResult AllEquipment()
        {
            ViewBag.Title = "All View";

            return View(ReportBuilder.GetAllViewData());
        }

        [Route("Home/EquipmentFull/{id=int}")]
        public ActionResult EquipmentFull(int id)
        {

            return View();
        }
    }
}
