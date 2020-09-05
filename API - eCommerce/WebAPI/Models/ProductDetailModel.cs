using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class ProductDetailModel
    {
        public ProductDetailModel()
        {
            Purchase = new HashSet<PurchaseModel>();
        }

        public int Id { get; set; }
        public int Stock { get; set; }
        public string Color { get; set; }
        public int ProductSizeId { get; set; }
        public int ProductId { get; set; }

        public virtual ProductModel Product { get; set; }
        public virtual ProductSizeModel ProductSize { get; set; }
        public virtual ICollection<PurchaseModel> Purchase { get; set; }
    }
}
