﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gymer.Models;
using PagedList;
using PagedList.Mvc;

namespace Gymer.Controllers
{
    public class BaiVietKTController : Controller
    {
        // GET: BaiVietKT
        GymEntities db = new GymEntities();
        //public ActionResult Index(int ? page)
        //{
        //    int pagesize = 6;
        //    int pagenumber = (page ?? 1);
        //    return View(db.BaiVietKTs.OrderByDescending(n=>n.TenChuDe).ToPagedList(pagenumber,pagesize));
        //}
        //public PartialViewResult BaiVietKTMoiNhat()
        //{
        //    return PartialView(db.BaiVietKTs.OrderByDescending(n => n.NgayDang).Take(6).ToList());
        //}
        //public ViewResult ChiTietBaiVietKT(int machitietkt = 0)
        //{
        //    Session["MaBaiViet"] = machitietkt;
        //    BaiVietKT bvkt = db.BaiVietKTs.SingleOrDefault(n => n.MaBaiVietKT == machitietkt);
        //    return View(bvkt);
        //}
        //public JsonResult TangLuotXem(int id)
        //{
        //    db.BaiVietKTs.Find(id).LuotXem++;
        //    if(Session["NguoiDung"] != null) // truong hop nguoi dung co tai khoan thi luu, khach vang lai thi ko can
        //    {
        //        NguoiDung nd = (NguoiDung)Session["NguoiDung"];
        //        db.LichSuBaiVietKTs.Add(new LichSuBaiVietKT { 
        //            MaBaiVietKT = id,
        //            MaNguoiDung = nd.MaNguoiDung,
        //            NgayXem = DateTime.Now
        //        });;

        //    }
        //    db.SaveChanges();
        //    return Json(db.BaiVietKTs.Find(id).LuotXem, JsonRequestBehavior.AllowGet);
        //}

        //public ActionResult LichSuCaNhan()
        //{
        //    if (Session["NguoiDung"] == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    NguoiDung nd = (NguoiDung)Session["NguoiDung"];
        //    return View(db.LichSuBaiVietKTs.Where(t => t.MaNguoiDung == nd.MaNguoiDung).ToList());
        //}
}
}