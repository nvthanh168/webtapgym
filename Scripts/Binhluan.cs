namespace Gymer.Scripts
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Binhluan")]
    public partial class Binhluan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Binhluan()
        {
            TraLoi = new HashSet<TraLoi>();
        }

        [Key]
        public int MaBinhLuan { get; set; }

        public string NoiDungBinhLuan { get; set; }

        public int? MaNguoiDung { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayBinhLuan { get; set; }

        public int? MaBaiViet { get; set; }

        public virtual BaiViet BaiViet { get; set; }

        public virtual NguoiDung NguoiDung { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TraLoi> TraLoi { get; set; }
    }
}
