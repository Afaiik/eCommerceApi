using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class Purchase
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int ProductDetailId { get; set; }
        public int OrderId { get; set; }
        public int Quantity { get; set; }
        public decimal UnitPrice { get; set; }

        public virtual Order Order { get; set; }
        public virtual ProductDetail ProductDetail { get; set; }
    }
}
