using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class PurchaseModel
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int ProductDetailId { get; set; }
        public int OrderId { get; set; }
        public int Quantity { get; set; }
        public decimal UnitPrice { get; set; }

        public virtual OrderModel Order { get; set; }
        public virtual ProductDetailModel ProductDetail { get; set; }
    }
}
