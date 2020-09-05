using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class OrderModel
    {
        public OrderModel()
        {
            Log = new HashSet<LogModel>();
            Purchase = new HashSet<PurchaseModel>();
        }

        public int Id { get; set; }
        public int StateId { get; set; }
        public int UserId { get; set; }
        public int PaymentMethodId { get; set; }

        public virtual PaymentMethodModel PaymentMethod { get; set; }
        public virtual StateModel State { get; set; }
        public virtual UserModel User { get; set; }
        public virtual ICollection<LogModel> Log { get; set; }
        public virtual ICollection<PurchaseModel> Purchase { get; set; }
    }
}
