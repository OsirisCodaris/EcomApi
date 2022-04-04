using System;
using System.Collections.Generic;

namespace ecomApi.Models
{
    public partial class Product
    {
        public int Idproduct { get; set; }
        public string Name { get; set; } = null!;
        public long Price { get; set; }
        public string? Img { get; set; }
        public DateTime Createdat { get; set; }
        public DateTime? Updatedat { get; set; }
    }
}
