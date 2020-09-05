using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class ResourceType
    {
        public ResourceType()
        {
            ProductResource = new HashSet<ProductResource>();
        }

        public int Id { get; set; }
        public string Description { get; set; }

        public virtual ICollection<ProductResource> ProductResource { get; set; }
    }
}
