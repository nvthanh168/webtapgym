//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Gymer.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class LichSuBaiViet
    {
        public int MaLichSu { get; set; }
        public Nullable<int> MaNguoiDung { get; set; }
        public Nullable<System.DateTime> NgayXem { get; set; }
        public Nullable<int> MaBaiViet { get; set; }
    
        public virtual BaiViet BaiViet { get; set; }
        public virtual NguoiDung NguoiDung { get; set; }
    }
}
