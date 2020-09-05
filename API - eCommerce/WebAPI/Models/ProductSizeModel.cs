using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class ProductSizeModel
    {
        public ProductSizeModel()
        {
            ProductDetail = new HashSet<ProductDetailModel>();
        }

        public int Id { get; set; }
        public string Description { get; set; }

        public virtual ICollection<ProductDetailModel> ProductDetail { get; set; }
    }
}
