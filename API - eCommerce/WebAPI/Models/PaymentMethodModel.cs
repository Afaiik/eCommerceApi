using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class PaymentMethodModel
    {
        public PaymentMethodModel()
        {
            Order = new HashSet<OrderModel>();
        }

        public int Id { get; set; }
        public string Description { get; set; }

        public virtual ICollection<OrderModel> Order { get; set; }
    }
}
