using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gymer.Models;
using PagedList;
using PagedList.Mvc;

namespace Gymer.Controllers
{
    public class BaiTapGymController : Controller
    {
        // GET: BaiTapGym
        GymEntities db = new GymEntities();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult BaiTap( int? id, int? page)
        {
            if (id == null)
            {
                Response.StatusCode = 404;
            }
            int num = 6;
            int pagenum = (page ?? 1);
            List<BaiViet> bv = db.BaiViets.Where(n => n.MaDanhMucPhanCap == id).ToList();
            return View(bv.OrderBy(n=>n.TenChuDe).ToPagedList(pagenum,num));
        }
        [HttpPost]
        public JsonResult TangLuotXem(int id)
        {
            db.BaiViets.Find(id).LuotXem++;
            if (Session["NguoiDung"] != null) // truong hop nguoi dung co tai khoan thi luu, khach vang lai thi ko can
            {
                if(db.LichSuBaiViets.FirstOrDefault(t => t.MaBaiViet == id) != null)
                {
                    db.LichSuBaiViets.FirstOrDefault(t => t.MaBaiViet == id).NgayXem = DateTime.Now;
                }
                else
                {
                    NguoiDung nd = (NguoiDung)Session["NguoiDung"];
                    db.LichSuBaiViets.Add(new LichSuBaiViet
                    {
                        MaBaiViet = id,
                        MaNguoiDung = nd.MaNguoiDung,
                        NgayXem = DateTime.Now
                    });
                }

            }
            db.SaveChanges();
            return Json(db.BaiViets.Find(id).LuotXem, JsonRequestBehavior.AllowGet);
        }

        public ActionResult LichSuCaNhan()
        {
            if (Session["NguoiDung"] == null)
            {
                return HttpNotFound();
            }
            NguoiDung nd = (NguoiDung)Session["NguoiDung"];
            return View(db.LichSuBaiViets.Where(t => t.MaNguoiDung == nd.MaNguoiDung).OrderByDescending(t => t.NgayXem).ToList());
        }

    }
}