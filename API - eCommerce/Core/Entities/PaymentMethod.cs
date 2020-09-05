using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class PaymentMethod
    {
        public PaymentMethod()
        {
            Order = new HashSet<Order>();
        }

        public int Id { get; set; }
        public string Description { get; set; }

        public virtual ICollection<Order> Order { get; set; }
    }
}
