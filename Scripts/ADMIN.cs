namespace Gymer.Scripts
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ADMIN")]
    public partial class ADMIN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ADMIN()
        {
            BaiViet = new HashSet<BaiViet>();
        }

        [Key]
        public int MaAdmin { get; set; }

        [StringLength(50)]
        public string HoTenAdmin { get; set; }

        [StringLength(50)]
        public string DiaChiAdmin { get; set; }

        [StringLength(10)]
        public string DienThoaiAdmin { get; set; }

        [StringLength(20)]
        public string TenDNAdmin { get; set; }

        [StringLength(20)]
        public string MatKhauAdmin { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? NgaySinhAdmin { get; set; }

        public bool? GioiTinhAdmin { get; set; }

        [StringLength(50)]
        public string EmailAdmin { get; set; }

        public int? QuyenAdmin { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiViet> BaiViet { get; set; }
    }
}
