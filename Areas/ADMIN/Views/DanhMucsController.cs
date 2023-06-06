﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Gymer.Models;

namespace Gymer.Areas.ADMIN.Views
{
    public class DanhMucsController : Controller
    {
        private GymEntities db = new GymEntities();

        // GET: ADMIN/DanhMucs
        public async Task<ActionResult> Index()
        {
            return View(await db.DanhMucs.ToListAsync());
        }

        // GET: ADMIN/DanhMucs/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DanhMuc danhMuc = await db.DanhMucs.FindAsync(id);
            if (danhMuc == null)
            {
                return HttpNotFound();
            }
            return View(danhMuc);
        }

        // GET: ADMIN/DanhMucs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ADMIN/DanhMucs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "MaDanhMuc,TenDanhMuc")] DanhMuc danhMuc)
        {
            if (ModelState.IsValid)
            {
                db.DanhMucs.Add(danhMuc);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(danhMuc);
        }

        // GET: ADMIN/DanhMucs/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DanhMuc danhMuc = await db.DanhMucs.FindAsync(id);
            if (danhMuc == null)
            {
                return HttpNotFound();
            }
            return View(danhMuc);
        }

        // POST: ADMIN/DanhMucs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "MaDanhMuc,TenDanhMuc")] DanhMuc danhMuc)
        {
            if (ModelState.IsValid)
            {
                db.Entry(danhMuc).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(danhMuc);
        }

        // GET: ADMIN/DanhMucs/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DanhMuc danhMuc = await db.DanhMucs.FindAsync(id);
            if (danhMuc == null)
            {
                return HttpNotFound();
            }
            return View(danhMuc);
        }

        // POST: ADMIN/DanhMucs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            DanhMuc danhMuc = await db.DanhMucs.FindAsync(id);
            db.DanhMucs.Remove(danhMuc);
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
