namespace QLSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sach")]
    public partial class Sach
    {
        [Key]
        [StringLength(10)]
        [DisplayName("Mã sách")]
        [Required(ErrorMessage = "Không được để trống!")]
        public string MaSach { get; set; }

        [StringLength(50)]
        [DisplayName("Tên sách")]
        [Required(ErrorMessage = "Không được để trống!")]
        public string TenSach { get; set; }

        [StringLength(100)]
        [DisplayName("Năm xuất bản")]
        [Required(ErrorMessage = "Không được để trống!")]
        public string NamXuatBan { get; set; }

        [DisplayName("Số trang")]
        [Required(ErrorMessage = "Không được để trống!")]
        public int? SoTrang { get; set; }

        [StringLength(10)]
        [DisplayName("Mã tác giả")]
        
        public string MaTacGia { get; set; }

        public virtual TacGia TacGia { get; set; }
    }
}
