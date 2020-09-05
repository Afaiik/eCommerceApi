using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class ProductDetail
    {
        public ProductDetail()
        {
            Purchase = new HashSet<Purchase>();
        }

        public int Id { get; set; }
        public int Stock { get; set; }
        public string Color { get; set; }
        public int ProductSizeId { get; set; }
        public int ProductId { get; set; }

        public virtual Product Product { get; set; }
        public virtual ProductSize ProductSize { get; set; }
        public virtual ICollection<Purchase> Purchase { get; set; }
    }
}
