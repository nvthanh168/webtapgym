using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Gymer.Models;

namespace Gymer.Areas.ADMIN.Controllers
{
    public class BinhluansController : Controller
    {
        private GymEntities db = new GymEntities();

        // GET: ADMIN/Binhluans
        public ActionResult Index()
        {
            var binhluans = db.Binhluans.Include(b => b.BaiViet).Include(b => b.NguoiDung);
            return View(binhluans.ToList());
        }

        // GET: ADMIN/Binhluans/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Binhluan binhluan = db.Binhluans.Find(id);
            if (binhluan == null)
            {
                return HttpNotFound();
            }
            return View(binhluan);
        }

        // GET: ADMIN/Binhluans/Create
        public ActionResult Create()
        {
            ViewBag.MaBaiViet = new SelectList(db.BaiViets, "MaBaiViet", "NoiDung");
            ViewBag.MaNguoiDung = new SelectList(db.NguoiDungs, "MaNguoiDung", "TenNguoiDung");
            return View();
        }

        // POST: ADMIN/Binhluans/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaBinhLuan,NoiDungBinhLuan,MaNguoiDung,NgayBinhLuan,MaBaiViet")] Binhluan binhluan)
        {
            if (ModelState.IsValid)
            {
                db.Binhluans.Add(binhluan);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaBaiViet = new SelectList(db.BaiViets, "MaBaiViet", "NoiDung", binhluan.MaBaiViet);
            ViewBag.MaNguoiDung = new SelectList(db.NguoiDungs, "MaNguoiDung", "TenNguoiDung", binhluan.MaNguoiDung);
            return View(binhluan);
        }

        // GET: ADMIN/Binhluans/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Binhluan binhluan = db.Binhluans.Find(id);
            if (binhluan == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaBaiViet = new SelectList(db.BaiViets, "MaBaiViet", "NoiDung", binhluan.MaBaiViet);
            ViewBag.MaNguoiDung = new SelectList(db.NguoiDungs, "MaNguoiDung", "TenNguoiDung", binhluan.MaNguoiDung);
            return View(binhluan);
        }

        // POST: ADMIN/Binhluans/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaBinhLuan,NoiDungBinhLuan,MaNguoiDung,NgayBinhLuan,MaBaiViet")] Binhluan binhluan)
        {
            if (ModelState.IsValid)
            {
                db.Entry(binhluan).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaBaiViet = new SelectList(db.BaiViets, "MaBaiViet", "NoiDung", binhluan.MaBaiViet);
            ViewBag.MaNguoiDung = new SelectList(db.NguoiDungs, "MaNguoiDung", "TenNguoiDung", binhluan.MaNguoiDung);
            return View(binhluan);
        }

        // GET: ADMIN/Binhluans/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Binhluan binhluan = db.Binhluans.Find(id);
            if (binhluan == null)
            {
                return HttpNotFound();
            }
            return View(binhluan);
        }

        // POST: ADMIN/Binhluans/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Binhluan binhluan = db.Binhluans.Find(id);
            db.Binhluans.Remove(binhluan);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
