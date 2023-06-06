using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace Gymer.Scripts
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=GymEntities1")
        {
        }

        public virtual DbSet<ADMIN> ADMIN { get; set; }
        public virtual DbSet<BaiViet> BaiViet { get; set; }
        public virtual DbSet<Binhluan> Binhluan { get; set; }
        public virtual DbSet<DanhMuc> DanhMuc { get; set; }
        public virtual DbSet<DanhMucPhanCap> DanhMucPhanCap { get; set; }
        public virtual DbSet<LichSuBaiViet> LichSuBaiViet { get; set; }
        public virtual DbSet<NguoiDung> NguoiDung { get; set; }
        public virtual DbSet<TinTuc> TinTuc { get; set; }
        public virtual DbSet<TraLoi> TraLoi { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
