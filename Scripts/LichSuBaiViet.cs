namespace Gymer.Scripts
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LichSuBaiViet")]
    public partial class LichSuBaiViet
    {
        [Key]
        public int MaLichSu { get; set; }

        public int? MaNguoiDung { get; set; }

        public DateTime? NgayXem { get; set; }

        public int? MaBaiViet { get; set; }

        public virtual BaiViet BaiViet { get; set; }

        public virtual NguoiDung NguoiDung { get; set; }
    }
}
