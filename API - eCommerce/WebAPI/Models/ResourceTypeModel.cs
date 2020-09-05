using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class ResourceTypeModel
    {
        public ResourceTypeModel()
        {
            ProductResource = new HashSet<ProductResourceModel>();
        }

        public int Id { get; set; }
        public string Description { get; set; }

        public virtual ICollection<ProductResourceModel> ProductResource { get; set; }
    }
}
