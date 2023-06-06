namespace Gymer.Scripts
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NguoiDung")]
    public partial class NguoiDung
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NguoiDung()
        {
            Binhluan = new HashSet<Binhluan>();
            LichSuBaiViet = new HashSet<LichSuBaiViet>();
            TraLoi = new HashSet<TraLoi>();
        }

        [Key]
        public int MaNguoiDung { get; set; }

        [StringLength(30)]
        public string TenNguoiDung { get; set; }

        [StringLength(30)]
        public string MatKhau { get; set; }

        [StringLength(30)]
        public string Gmail { get; set; }

        [StringLength(30)]
        public string NhapLaiMatKhau { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? NgaySinh { get; set; }

        [StringLength(10)]
        public string DienThoaiND { get; set; }

        public string DiaChi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Binhluan> Binhluan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LichSuBaiViet> LichSuBaiViet { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TraLoi> TraLoi { get; set; }
    }
}
