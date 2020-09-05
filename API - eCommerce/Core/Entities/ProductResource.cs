using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class ProductResource
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public byte[] Picture { get; set; }
        public int ProductId { get; set; }
        public int ResourceTypeId { get; set; }

        public virtual Product Product { get; set; }
        public virtual ResourceType ResourceType { get; set; }
    }
}
