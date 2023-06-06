namespace Gymer.Scripts
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DanhMucPhanCap")]
    public partial class DanhMucPhanCap
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DanhMucPhanCap()
        {
            BaiViet = new HashSet<BaiViet>();
        }

        [Key]
        public int MaDanhMucPhanCap { get; set; }

        [StringLength(50)]
        public string TenDanhMucPhanCap { get; set; }

        public int? MaDanhMuc { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiViet> BaiViet { get; set; }

        public virtual DanhMuc DanhMuc { get; set; }
    }
}
