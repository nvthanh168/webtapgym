namespace Gymer.Scripts
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TraLoi")]
    public partial class TraLoi
    {
        [Key]
        public int MaTraLoi { get; set; }

        public int? MaBinhLuan { get; set; }

        public int? MaNguoiDung { get; set; }

        public string NoiDung { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayDang { get; set; }

        public virtual Binhluan Binhluan { get; set; }

        public virtual NguoiDung NguoiDung { get; set; }
    }
}
