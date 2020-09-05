using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class ProductModel
    {
        public ProductModel()
        {
            Discount = new HashSet<DiscountModel>();
            Log = new HashSet<LogModel>();
            ProductDetail = new HashSet<ProductDetailModel>();
            ProductResource = new HashSet<ProductResourceModel>();
            Review = new HashSet<ReviewModel>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public int StateId { get; set; }
        public int CompanyId { get; set; }

        public virtual CompanyModel Company { get; set; }
        public virtual StateModel State { get; set; }
        public virtual ICollection<DiscountModel> Discount { get; set; }
        public virtual ICollection<LogModel> Log { get; set; }
        public virtual ICollection<ProductDetailModel> ProductDetail { get; set; }
        public virtual ICollection<ProductResourceModel> ProductResource { get; set; }
        public virtual ICollection<ReviewModel> Review { get; set; }
    }
}
