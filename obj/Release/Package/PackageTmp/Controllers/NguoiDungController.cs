
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Gymer.Models;

namespace Gymer.Controllers
{
    public class NguoiDungController : Controller
    {
        GymEntities db = new GymEntities();
        // GET: NguoiDung
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(FormCollection f)
        {
            string staikhoan = f["txtusername"].ToString();
            string smatkhau = f["txtpassword"].ToString();
            NguoiDung nd = db.NguoiDungs.SingleOrDefault(n => n.TenNguoiDung == staikhoan && n.MatKhau == smatkhau);
            ADMIN ad = db.ADMINs.SingleOrDefault(n => n.TenDNAdmin == staikhoan && n.MatKhauAdmin == smatkhau);
            if(nd != null)
            {
                Session["NguoiDung"] = nd;
                return Redirect(Request.UrlReferrer.ToString());
            }
            if( ad != null)
            {
                Session["ADMIN"] = ad;
                return Redirect("/ADMIN/TrangChu/Index");
            }
            else
            {
                ViewBag.ThongBao = "Đăng nhập thất bại";
            }
            return View();
        }
        public ActionResult DangNhapChinh()
        {
            return View();
        }
        public ActionResult DangKy()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DangKy([Bind(Include = "MaNguoiDung,TenNguoiDung,MatKhau,Gmail,NhapLaiMatKhau,NgaySinh,GioiTinh,DienThoaiND")] NguoiDung nguoiDung)
        {
            if (ModelState.IsValid)
            {    
                if(nguoiDung.TenNguoiDung.Length < 10)
                {
                    ViewBag.tb = "Tài khoản phải lớn hơn 10 kí tự";
                    return View(nguoiDung);
                }
                if (nguoiDung.MatKhau.Length < 8)
                {
                    ViewBag.tb = "mat khau lon hon 8";
                    return View(nguoiDung);
                }
                if (nguoiDung.MatKhau != nguoiDung.NhapLaiMatKhau)
                {
                    ViewBag.tb = "Mật khẩu đăng kí không trùng nhau";
                    return View(nguoiDung);
                }
                if (nguoiDung.DienThoaiND.Length < 10 )
                {
                    ViewBag.tb = "Số điện thoại phải là 10 kí tự";
                    return View(nguoiDung);
                }
                db.NguoiDungs.Add(nguoiDung);
                await db.SaveChangesAsync();
                NguoiDung nd = db.NguoiDungs.SingleOrDefault(n => n.TenNguoiDung == nguoiDung.TenNguoiDung && n.MatKhau == nguoiDung.MatKhau);
                Session["NguoiDung"] = nd;
                return RedirectToAction("Index","HienThi");
            }

            return View(nguoiDung);
        }

        public PartialViewResult CongCu()
        {
            return PartialView();
        }
        [HttpPost]
        public JsonResult kttk(string TenNguoiDung)
        {
            bool tt = db.NguoiDungs.FirstOrDefault(n=>n.TenNguoiDung == TenNguoiDung) != null;
            return Json(!tt, JsonRequestBehavior.AllowGet);
        }


    }
}