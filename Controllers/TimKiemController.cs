using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gymer.Models;

namespace Gymer.Controllers
{
    public class TimKiemController : Controller
    {
        GymEntities db = new GymEntities();
        // GET: TimKiem
        public ActionResult Index()
        {
            return View();
        }
        public ViewResult TimKiem(string Key)
        {
            if(Key != null)
            {
                Session["key"] = Key;
            }
            string key = Session["key"].ToString();
            List<BaiViet> bt = db.BaiViets.Where(t => t.TenChuDe.ToLower().Contains(key.ToLower())).ToList();
            ViewBag.TB = "Có " + bt.Count + " kết quả";
            return View(bt);
        }
    }
}