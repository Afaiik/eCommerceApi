using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class ProductResourceModel
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public byte[] Picture { get; set; }
        public int ProductId { get; set; }
        public int ResourceTypeId { get; set; }

        public virtual ProductModel Product { get; set; }
        public virtual ResourceTypeModel ResourceType { get; set; }
    }
}
