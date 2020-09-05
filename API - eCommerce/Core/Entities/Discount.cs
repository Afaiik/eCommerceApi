using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class Discount
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int Percent { get; set; }
        public int ProductId { get; set; }
        public bool Active { get; set; }

        public virtual Product Product { get; set; }
    }
}
