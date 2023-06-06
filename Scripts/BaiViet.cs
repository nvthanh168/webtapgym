namespace Gymer.Scripts
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BaiViet")]
    public partial class BaiViet
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BaiViet()
        {
            Binhluan = new HashSet<Binhluan>();
            LichSuBaiViet = new HashSet<LichSuBaiViet>();
        }

        [Key]
        public int MaBaiViet { get; set; }

        public string NoiDung { get; set; }

        public string AnhChuDe { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayDang { get; set; }

        public int? LuotXem { get; set; }

        public string TenChuDe { get; set; }

        public int? MaAdmin { get; set; }

        public string HuongDan { get; set; }

        public int? MaDanhMucPhanCap { get; set; }

        public virtual ADMIN ADMIN { get; set; }

        public virtual DanhMucPhanCap DanhMucPhanCap { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Binhluan> Binhluan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LichSuBaiViet> LichSuBaiViet { get; set; }
    }
}
