namespace Gymer.Scripts
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TinTuc")]
    public partial class TinTuc
    {
        [Key]
        public int MaTinTuc { get; set; }

        [StringLength(50)]
        public string TieuDe { get; set; }

        public string HinhAnh { get; set; }

        public string NoiDung { get; set; }

        [StringLength(50)]
        public string Tieude2 { get; set; }
    }
}
