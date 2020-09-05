using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class DiscountModel
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int Percent { get; set; }
        public int ProductId { get; set; }
        public bool Active { get; set; }

        public virtual ProductModel Product { get; set; }
    }
}
