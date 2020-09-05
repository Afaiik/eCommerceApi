using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class ProductSize
    {
        public ProductSize()
        {
            ProductDetail = new HashSet<ProductDetail>();
        }

        public int Id { get; set; }
        public string Description { get; set; }

        public virtual ICollection<ProductDetail> ProductDetail { get; set; }
    }
}
