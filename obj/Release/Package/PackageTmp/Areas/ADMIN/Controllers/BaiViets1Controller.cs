using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Gymer.Models;

namespace Gymer.Areas.ADMIN.Controllers
{
    public class BaiViets1Controller : Controller
    {
        private GymEntities db = new GymEntities();

        // GET: ADMIN/BaiViets1
        public async Task<ActionResult> Index()
        {
            var baiViets = db.BaiViets.Include(b => b.ADMIN).Include(b => b.DanhMucPhanCap);
            return View(await baiViets.ToListAsync());
        }

        // GET: ADMIN/BaiViets1/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiViet baiViet = await db.BaiViets.FindAsync(id);
            if (baiViet == null)
            {
                return HttpNotFound();
            }
            return View(baiViet);
        }

        // GET: ADMIN/BaiViets1/Create
        public ActionResult Create()
        {
            ViewBag.MaAdmin = new SelectList(db.ADMINs, "MaAdmin", "HoTenAdmin");
            ViewBag.MaDanhMucPhanCap = new SelectList(db.DanhMucPhanCaps, "MaDanhMucPhanCap", "TenDanhMucPhanCap");
            return View();
        }

        // POST: ADMIN/BaiViets1/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "MaBaiViet,NoiDung,AnhChuDe,NgayDang,LuotXem,TenChuDe,MaAdmin,HuongDan,MaDanhMucPhanCap")] BaiViet baiViet)
        {
            if (ModelState.IsValid)
            {
                db.BaiViets.Add(baiViet);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.MaAdmin = new SelectList(db.ADMINs, "MaAdmin", "HoTenAdmin", baiViet.MaAdmin);
            ViewBag.MaDanhMucPhanCap = new SelectList(db.DanhMucPhanCaps, "MaDanhMucPhanCap", "TenDanhMucPhanCap", baiViet.MaDanhMucPhanCap);
            return View(baiViet);
        }

        // GET: ADMIN/BaiViets1/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiViet baiViet = await db.BaiViets.FindAsync(id);
            if (baiViet == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaAdmin = new SelectList(db.ADMINs, "MaAdmin", "HoTenAdmin", baiViet.MaAdmin);
            ViewBag.MaDanhMucPhanCap = new SelectList(db.DanhMucPhanCaps, "MaDanhMucPhanCap", "TenDanhMucPhanCap", baiViet.MaDanhMucPhanCap);
            return View(baiViet);
        }

        // POST: ADMIN/BaiViets1/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "MaBaiViet,NoiDung,AnhChuDe,NgayDang,LuotXem,TenChuDe,MaAdmin,HuongDan,MaDanhMucPhanCap")] BaiViet baiViet)
        {
            if (ModelState.IsValid)
            {
                db.Entry(baiViet).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.MaAdmin = new SelectList(db.ADMINs, "MaAdmin", "HoTenAdmin", baiViet.MaAdmin);
            ViewBag.MaDanhMucPhanCap = new SelectList(db.DanhMucPhanCaps, "MaDanhMucPhanCap", "TenDanhMucPhanCap", baiViet.MaDanhMucPhanCap);
            return View(baiViet);
        }

        // GET: ADMIN/BaiViets1/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiViet baiViet = await db.BaiViets.FindAsync(id);
            if (baiViet == null)
            {
                return HttpNotFound();
            }
            return View(baiViet);
        }

        // POST: ADMIN/BaiViets1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            BaiViet baiViet = await db.BaiViets.FindAsync(id);
            db.BaiViets.Remove(baiViet);
            await db.SaveChangesAsync();
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
