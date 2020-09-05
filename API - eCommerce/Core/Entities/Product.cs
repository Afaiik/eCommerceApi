using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class Product
    {
        public Product()
        {
            Discount = new HashSet<Discount>();
            Log = new HashSet<Log>();
            ProductDetail = new HashSet<ProductDetail>();
            ProductResource = new HashSet<ProductResource>();
            Review = new HashSet<Review>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public int StateId { get; set; }
        public int CompanyId { get; set; }

        public virtual Company Company { get; set; }
        public virtual State State { get; set; }
        public virtual ICollection<Discount> Discount { get; set; }
        public virtual ICollection<Log> Log { get; set; }
        public virtual ICollection<ProductDetail> ProductDetail { get; set; }
        public virtual ICollection<ProductResource> ProductResource { get; set; }
        public virtual ICollection<Review> Review { get; set; }
    }
}
