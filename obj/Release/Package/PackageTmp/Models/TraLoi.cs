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
    
    public partial class TraLoi
    {
        public int MaTraLoi { get; set; }
        public Nullable<int> MaBinhLuan { get; set; }
        public Nullable<int> MaNguoiDung { get; set; }
        public string NoiDung { get; set; }
        public Nullable<System.DateTime> NgayDang { get; set; }
    
        public virtual Binhluan Binhluan { get; set; }
        public virtual NguoiDung NguoiDung { get; set; }
    }
}
